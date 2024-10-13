///////////////////////////////////////////////////////////////////////////
// Texas A&M University
// CSCE 616 Hardware Design Verification
// Created by  : Prof. Quinn and Saumil Gogri
///////////////////////////////////////////////////////////////////////////

class fixed_length_fixed_delay_test extends base_test;

	`uvm_component_utils(fixed_length_fixed_delay_test)

	function new (string name, uvm_component parent);
		super.new(name, parent);
	endfunction : new

	function void build_phase(uvm_phase phase);
		uvm_config_wrapper::set(this,"tb.vsequencer.run_phase", "default_sequence", fixed_length_fixed_delay_vsequence::type_id::get());
		super.build_phase(phase);
	endfunction : build_phase

	task run_phase(uvm_phase phase);
		super.run_phase(phase);
		`uvm_info(get_type_name(),"Starting short packet short delay test",UVM_NONE)
	endtask : run_phase

endclass : fixed_length_fixed_delay_test

///////////////////////////// VIRTUAL SEQUENCE ///////////////////////////

class fixed_length_fixed_delay_vsequence extends htax_base_vseq;

  `uvm_object_utils(fixed_length_fixed_delay_vsequence)

  htax_packet_c req[4];

  function new (string name = "fixed_length_fixed_delay_vsequence");
    super.new(name);
	req[0] = new();
    req[1] = new();
    req[2] = new();
    req[3] = new();
  endfunction : new

  task body();
		// Exectuing 10 TXNs on ports {0,1,2,3} randomly 
    repeat(500) begin
      
	  fork
      `uvm_do_on_with (req[0],p_sequencer.htax_seqr[0] , {req[0].length == 3 ; req[0].delay == 4;});
      `uvm_do_on_with (req[1],p_sequencer.htax_seqr[1] , {req[1].length == 3 ; req[1].delay == 4;});
      `uvm_do_on_with (req[2],p_sequencer.htax_seqr[2] , {req[2].length == 3 ; req[2].delay == 4;});
      `uvm_do_on_with (req[3],p_sequencer.htax_seqr[3] , {req[3].length == 3 ; req[3].delay == 4;});
	  join
			//USE `uvm_do_on_with to add constraints on req
		
    end
  endtask : body

endclass : fixed_length_fixed_delay_vsequence
