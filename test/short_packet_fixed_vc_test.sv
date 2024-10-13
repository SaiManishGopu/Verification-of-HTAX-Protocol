///////////////////////////////////////////////////////////////////////////
// Texas A&M University
// CSCE 616 Hardware Design Verification
// Created by  : Prof. Quinn and Saumil Gogri
///////////////////////////////////////////////////////////////////////////

class short_packet_fixed_vc_test extends base_test;

	`uvm_component_utils(short_packet_fixed_vc_test)

	function new (string name, uvm_component parent);
		super.new(name, parent);
	endfunction : new

	function void build_phase(uvm_phase phase);
		uvm_config_wrapper::set(this,"tb.vsequencer.run_phase", "default_sequence", short_packet_fixed_vc_vsequence::type_id::get());
		super.build_phase(phase);
	endfunction : build_phase

	task run_phase(uvm_phase phase);
		super.run_phase(phase);
		`uvm_info(get_type_name(),"Starting short packet fixed vc test",UVM_NONE)
	endtask : run_phase

endclass : short_packet_fixed_vc_test

///////////////////////////// VIRTUAL SEQUENCE ///////////////////////////

class short_packet_fixed_vc_vsequence extends htax_base_vseq;

  `uvm_object_utils(short_packet_fixed_vc_vsequence)

  htax_packet_c req[4];

  function new (string name = "short_packet_fixed_vc_vsequence");
    super.new(name);
	req[0] = new();
    req[1] = new();
    req[2] = new();
    req[3] = new();
  endfunction : new

  task body();
		// Exectuing 10 TXNs on ports {0,1,2,3} randomly 
    repeat(500) begin
      bit [1:0] vc_;
	  vc_ = $urandom_range(1,2);
	  fork
      `uvm_do_on_with(req[0], p_sequencer.htax_seqr[0] , {req[0].length inside {[3:10]} ; req[0].vc == vc_;});
	  `uvm_do_on_with(req[1], p_sequencer.htax_seqr[1] , {req[1].length inside {[3:10]} ; req[1].vc == vc_;});
	  `uvm_do_on_with(req[2], p_sequencer.htax_seqr[2] , {req[2].length inside {[3:10]} ; req[2].vc == vc_;});
	  `uvm_do_on_with(req[3], p_sequencer.htax_seqr[3] , {req[3].length inside {[3:10]} ; req[3].vc == vc_;});
	  join
			//USE `uvm_do_on_with to add constraints on req
		
    end
  endtask : body

endclass : short_packet_fixed_vc_vsequence
