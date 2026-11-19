//------------------------------------------------------------------------------
// File        : dram_env_pkg.sv
// Description : Package for the UVM component hierarchy used by dram_env
//               (agent, driver, monitor, sequencer, scoreboard, coverage, env).
//               Each class lives in its own file and is `include'd here.
//               Order matters: include a class before any class that uses it.
//------------------------------------------------------------------------------
`ifndef DRAM_ENV_PKG_SV
`define DRAM_ENV_PKG_SV

package dram_env_pkg;

  import uvm_pkg::*;
  `include "uvm_macros.svh"

  //--------------------------------------------------------------------------
  // Hierarchy components (low level -> high level)
  //--------------------------------------------------------------------------
  // `include "dram_sequencer.sv"
  // `include "dram_driver.sv"
  // `include "dram_monitor.sv"
  // `include "dram_agent.sv"
  // `include "dram_scoreboard.sv"
  // `include "dram_coverage.sv"
  `include "dram_env.sv"

endpackage : dram_env_pkg

`endif // DRAM_ENV_PKG_SV
