//------------------------------------------------------------------------------
// File        : dram_env.sv
// Description : Top-level UVM environment for the DRAM verification project.
//               Owns the agent(s), scoreboard, and coverage collector, and
//               connects them in connect_phase.
//------------------------------------------------------------------------------
`ifndef DRAM_ENV_SV
`define DRAM_ENV_SV

class dram_env extends uvm_env;

  `uvm_component_utils(dram_env)

  //--------------------------------------------------------------------------
  // Sub-components (uncomment as each class is added)
  //--------------------------------------------------------------------------
  // dram_agent       m_agent;
  // dram_scoreboard  m_scb;
  // dram_coverage    m_cov;

  //--------------------------------------------------------------------------
  // Constructor
  //--------------------------------------------------------------------------
  function new(string name = "dram_env", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  //--------------------------------------------------------------------------
  // build_phase : create sub-components through the factory
  //--------------------------------------------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_type_name(), "build_phase", UVM_HIGH)

    // m_agent = dram_agent     ::type_id::create("m_agent", this);
    // m_scb   = dram_scoreboard::type_id::create("m_scb",   this);
    // m_cov   = dram_coverage  ::type_id::create("m_cov",   this);
  endfunction : build_phase

  //--------------------------------------------------------------------------
  // connect_phase : connect monitor analysis port to scoreboard / coverage
  //--------------------------------------------------------------------------
  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info(get_type_name(), "connect_phase", UVM_HIGH)

    // m_agent.m_mon.ap.connect(m_scb.analysis_export);
    // m_agent.m_mon.ap.connect(m_cov.analysis_export);
  endfunction : connect_phase

endclass : dram_env

`endif // DRAM_ENV_SV
