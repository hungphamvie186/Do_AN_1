library verilog;
use verilog.vl_types.all;
entity cla_4bit is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        Cin             : in     vl_logic;
        S               : out    vl_logic_vector(3 downto 0);
        Co              : out    vl_logic
    );
end cla_4bit;
