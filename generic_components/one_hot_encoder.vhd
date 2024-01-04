-- N to N one-hot encoder

library ieee;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.numeric_std.all;

entity one_hot_encoder is
  generic
  (
    DATA_WIDTH : integer := 5;
    OUT_WIDTH  : integer := 18 -- quantidade de elementos enderecados
  );
  port
  (
    i_DATA : in std_logic_vector(DATA_WIDTH - 1 downto 0);
    o_DATA : out std_logic_vector(OUT_WIDTH - 1 downto 0)

  );
end one_hot_encoder;

architecture arch of one_hot_encoder is
begin

  process (i_DATA)
  begin
    for i in 0 to OUT_WIDTH - 1 loop

      if (i = to_integer(unsigned(i_DATA))) then
        o_DATA(i) <= '1'; -- caso valor selecionado
      else
        o_DATA(i) <= '0'; -- caso valor não selecionado
      end if;
    end loop;
  end process;
end arch;