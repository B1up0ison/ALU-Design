library verilog;
use verilog.vl_types.all;
entity lab6one is
    port(
        R_first         : out    vl_logic_vector(0 to 6);
        clock           : in     vl_logic;
        Resett          : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        Reset           : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        Enable_decoder  : in     vl_logic;
        data_in         : in     vl_logic;
        FSM_reset       : in     vl_logic;
        R_last          : out    vl_logic_vector(0 to 6);
        Sign            : out    vl_logic_vector(0 to 6);
        student_id      : out    vl_logic_vector(0 to 6)
    );
end lab6one;
