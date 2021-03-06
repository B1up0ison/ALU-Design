library ieee;
use ieee.std_logic_1164.all;

entity FSM is

port
(	 
	clk				: in std_logic;
	data_in			: in std_logic;
	reset				: in std_logic;
	student_id		: out std_logic_vector (3 downto 0);
	current_state	: out std_logic_vector (3 downto 0)
	
	);
	
end FSM;

architecture rtl of FSM is

	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
	
	signal state			: state_type;
	signal data_out		: std_logic_vector (3 downto 0);
	signal Current_statee : std_logic_vector (3 downto 0);
	
begin
	process (clk, reset)
	
	begin
			if reset = '1' then
					state <= s0;
			elsif	(rising_edge(clk)) then
			
				case state is		-- FSM 8
					when s0=>
					if data_in = '1' then
							state <= s8;
					else	
							state <=s0;
							
					end if;
					
					when s1=>
					if data_in = '1' then
							state <= s0;
					else	
							state <=s1;
							
					end if;
					
					when s2=>
					if data_in = '1' then
							state <= s1;
					else	
							state <=s2;
							
					end if;
					
					when s3=>
					if data_in = '1' then
							state <= s2;
					else	
							state <=s3;
							
					end if;
					
					when s4=>
					if data_in = '1' then
							state <= s3;
					else	
							state <=s4;
							
					end if;
					
					when s5=>
					if data_in = '1' then
							state <= s4;
					else	
							state <=s5;
							
					end if;
					
					when s6=>
					if data_in = '1' then
							state <= s5;
					else	
							state <=s6;
							
					end if;
					
					when s7=>
					if data_in = '1' then
							state <= s6;
					else	
							state <=s7;
							
					end if;
					
					when s8=>
					if data_in = '1' then
							state <= s7;
					else	
							state <=s8;
							
					end if;
			end case;
	end if;
end process;	
	
	-- STUDENT ID: 500945776      
	process (state, data_in)
	begin
			case state is 
					when s0=>
							
									current_state <= "0000"; --0;
							
									
									student_id <= "0101"; -- 5 
							
					when s1=>
							
									current_state <= "0001"; --1;
									
									student_id <= "0000"; -- 0
									
					when s2=>
							
									current_state <= "0010"; --2;
									
									student_id<= "0000"; -- 0
							
					when s3=>
							
									current_state <= "0011"; --3;
								
									student_id <= "1001"; -- 9
							
					when s4=>
							
									current_state <= "0100"; --4;
									
									student_id <= "0100"; -- 4
							
					when s5=>
							
									current_state <= "0101"; --5;
									
									student_id <= "0101"; -- 5
								
					when s6=>
							
									current_state <= "0110"; --6;
									
									student_id <= "0111"; -- 7
							
					when s7=>
							
									current_state <= "0111"; --7;
									
									student_id <= "0011"; -- 7
									
					when s8=>
									current_state <= "1000"; --8;
									
									student_id <= "0110"; -- 6
							
					end case;
			end process;
	
			
		end rtl;		