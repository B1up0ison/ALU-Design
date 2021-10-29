library verilog;
use verilog.vl_types.all;
entity lab6one_vlg_check_tst is
    port(
        R_first         : in     vl_logic_vector(0 to 6);
        R_last          : in     vl_logic_vector(0 to 6);
        Sign            : in     vl_logic_vector(0 to 6);
        student_id      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end lab6one_vlg_check_tst;
