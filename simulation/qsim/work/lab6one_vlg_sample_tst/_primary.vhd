library verilog;
use verilog.vl_types.all;
entity lab6one_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        data_in         : in     vl_logic;
        Enable_decoder  : in     vl_logic;
        FSM_reset       : in     vl_logic;
        Reset           : in     vl_logic;
        Resett          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lab6one_vlg_sample_tst;
