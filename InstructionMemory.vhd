library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity InstructionMemory is
    Port ( address : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           dataOut : out  STD_LOGIC_VECTOR (31 downto 0));
end InstructionMemory;

architecture Behavioral of InstructionMemory is

type rom_type is array (31 downto 0) of std_logic_vector (31 downto 0);
signal ROM : rom_type := (	"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000",
									"00000000000000000000000000000000", "00000000000000000000000000000000");

begin

process (rst)
begin
	if (rst = '1') then
		-- Resetear
	else
		dataOut <= ROM(conv_integer(address(4 downto 0)));
	end if;
end process;

end Behavioral;