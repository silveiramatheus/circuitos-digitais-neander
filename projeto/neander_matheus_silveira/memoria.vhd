LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY memoria IS
	PORT(
		entrada: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		saida: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END memoria;

ARCHITECTURE circ1 OF memoria IS
BEGIN
	WITH entrada SELECT
				   --	saida			 entrada
		saida <=	"00100000" WHEN "00000000", -- mem0   LDA
					"10000000" WHEN "00000001", -- mem1   128
					"00110000" WHEN "00000010", -- mem2   ADD
					"10000001" WHEN "00000011", -- mem3   129 (3)
					"01000000" WHEN "00000100", -- mem4   OR
					"10000010" WHEN "00000101", -- mem5   130 (5)
					"01010000" WHEN "00000110", -- mem6   AND
					"10000011" WHEN "00000111", -- mem7   131 (8)
					"01100000" WHEN "00001000", -- mem8   NOT
					"10100000" WHEN "00001001", -- mem9   JZ
					"00111100" WHEN "00001010", -- mem10  60
					"10010000" WHEN "00001011", -- mem11  JN
					"00011110" WHEN "00001100", -- mem12  30
					"10000000" WHEN "00001101", -- mem13  JMP
					"10000100" WHEN "00001110", -- mem14  132
					
					"01010000" WHEN "00011110", -- mem30  AND
					"10000011" WHEN "00011111", -- mem31  131 (8)
					"10010000" WHEN "00100000", -- mem32  JN
					"00111100" WHEN "00100001", -- mem33  60
					"10100000" WHEN "00100010", -- mem34  JZ
					"00001101" WHEN "00100011", -- mem35  13
					
					"01000000" WHEN "00111100", -- mem60  OR
					"10000101" WHEN "00111101", -- mem61  133 (FF)
					"11110000" WHEN "00111110", -- mem62  HLT
					
					"00000111" WHEN "10000000", -- mem128 7
					"00000011" WHEN "10000001", -- mem129 3
					"00000101" WHEN "10000010", -- mem130 5
					"00001000" WHEN "10000011", -- mem131 8
					"11110000" WHEN "10000100", -- mem132 HLT
					"11111111" WHEN "10000101", -- mem133 FF
					
					"00000000" WHEN OTHERS;
END circ1; 