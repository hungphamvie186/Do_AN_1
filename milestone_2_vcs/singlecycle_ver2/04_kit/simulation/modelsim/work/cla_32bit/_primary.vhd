library verilog;
use verilog.vl_types.all;
entity cla_32bit is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        Cin             : in     vl_logic;
        S               : out    vl_logic_vector(31 downto 0);
        Cout            : out    vl_logic
    );
end cla_32bit;
