library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
package environment_package is
    type FIELD is array (integer range <> , integer range <>) of BIT;
end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.ENVIRONMENT_PACKAGE.ALL;

entity environment is
    Generic (FIELD_SIZE : INTEGER := 32);
    Port    (clock_controlled  : in STD_LOGIC;
             button_clock      : in STD_LOGIC;
             clock_enable      : in STD_LOGIC;
             button            : in STD_LOGIC_VECTOR(4 downto 0);
             printed           : inout STD_LOGIC:='1';
             
             cursor_x          : out INTEGER;
             cursor_y          : out INTEGER;
             field_out         : out FIELD(0 to (FIELD_SIZE - 1), 0 to (FIELD_SIZE - 1)));
end environment;

architecture Behavioral of environment is
    -- signals
    -- next state
    signal myField   : FIELD(0 to (FIELD_SIZE - 1), 0 to (FIELD_SIZE - 1));
    signal newField  : FIELD(0 to (FIELD_SIZE - 1), 0 to (FIELD_SIZE - 1));
    signal condition : STD_LOGIC_VECTOR(2 downto 0) := "000";
    -- cursor
    signal change                 : STD_LOGIC := '0';
    signal change_order           : STD_LOGIC := '0';
    signal column                 : INTEGER range 0 to FIELD_SIZE - 1 := 0;
    signal row                    : INTEGER range 0 to FIELD_SIZE - 1 := 0;
    signal curr_col      : INTEGER;
    signal curr_row      : INTEGER;
    signal prev_col      : INTEGER;
    signal prev_row      : INTEGER;
    signal delay1, delay2, delay3 : STD_LOGIC;
    --private
    signal init :boolean:=False;
    signal count :integer:=0;
    signal curr_state : bit:='0';
    signal calc: boolean:=True;
    signal prev_calc:boolean:=True;
    SIGNAL i : integer:=-1;
    signal k : integer:=-1;
--------------------------------------------------------------------------
begin
    field_out <= myField;
    
    change_order <= delay1 AND delay2 AND (not delay3);
    cursor_x <= column;
    cursor_y <= row;
    
    NEXT_STATE: process(clock_controlled)
    begin
        
        if rising_edge(clock_controlled) then
        
            delay1 <= change;
            delay2 <= delay1;
            delay3 <= delay2;
            if (delay3='1') then
                if (myField(column,row)='0') then
                    myField(column,row)<='1';
                else
                    myField(column,row)<='0';
                end if;
            end if;
            if (printed='1') then
                calc<=True;
                prev_calc<=True;
                printed<='0';
            end if;
        
--            if(init and not calc and prev_calc) then
--                myField <= newField;
--                prev_calc<=False;
--            else
--                init<=True;
--            --implement random generator
                
--            end if;
        if (i=-1 and k=-1 and prev_calc and not (prev_col =myField'length-1 and prev_row=myField'length-1)) then
            if ((count=2 or count=3) and curr_state='1') then
                newField(prev_col,prev_row)<='1';
            else
                if (count=3 and curr_state='0') then
                    newField(prev_col,prev_row)<='1';
                else
                    newField(prev_col,prev_row)<='0';
                end if;
            end if;
            curr_state<=myField(curr_col,curr_row);
            count<=0;
            if (not calc) then
                prev_calc<=False;
            end if;
        end if;
        if (calc) then
        --Skip the parts where there are no nodes
            if not (i=0 and k=0) then 
                if (curr_col=0 and i=-1) then
                    
                else 
                    if (curr_col=myField'length-1 and i=1) then
                    
                    end if;
                end if;
                if (curr_row=0 and k=-1) then
                
                    else 
                        if (curr_row=myField'length-1 and k=1) then
                        
                        end if;
                    end if;
                if (myField(curr_col+i,curr_row+k)='1') then
                    count<=count+1;
                end if;
            end if;
            k<=k+1;
            if (k=1) then
                k<=-1;
                if (i=1) then
                    i<=-1;
                    if (curr_row=myField'length-1 and not (curr_col=myField'length-1)) then
                        prev_col<=curr_col;
                        prev_row<=curr_row;
                        curr_col<=curr_col+1;
                        curr_row<=0;
                    else
                        if (curr_row=myField'length-1 and curr_col=myField'length-1) then
                            prev_col<=curr_col;
                            prev_row<=curr_row;
                            curr_col<=0;
                            curr_row<=0;
                            calc<=False;
                            myField<=newField;
                        else
                            prev_row<=curr_row;
                            curr_row<=curr_row+1;
                        end if;
                    end if;
                else
                    i<=i+1;
                end if;
            else 
                k<=k+1;
            end if;
        end if;
        end if;
    end process;
    
        CURSOR : process(button_clock)
    begin
        if rising_edge(button_clock) then
            change <= '0'; 
            if clock_enable = '1' then
                column <= 0;
                row    <= 0;
                
            -- down button
            elsif button = "10000" then
                if (row = FIELD_SIZE - 1) then
                    row <= 0;
                else    
                    row <= row + 1;
                end if;
            -- right button
            elsif button = "01000" then
                if (column = FIELD_SIZE - 1) then
                    column <= 0;
                else    
                    column <= column + 1;
                end if;
            -- left button
            elsif button = "00100" then
                if (column = 0) then
                    column <= FIELD_SIZE - 1;
                else    
                    column <= column - 1;
                end if;
            -- up button
            elsif button = "00010" then
                if (row = 0) then
                    row <= FIELD_SIZE - 1;
                else    
                    row <= row - 1;
                end if;
            
            -- center button
            elsif button = "00001" then
                change<='1';        
            end if;
        end if;
    end process;
    
end Behavioral;
