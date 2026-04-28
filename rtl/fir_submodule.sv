`include "fir_header.svh"

module fir_submodule;
  import cf_math_pkg::*;
`ifdef ENABLE_VIP
  initial begin
    #10us $info(`FIR_SUCCESS_MESSAGE);
  end
`else
  initial begin
    #10us $fatal("fir-hwpe module is not enabled. Add the define flag to the package description (Bender.yml)");
  end
`endif

  //Random instantiation of common cells IP to enforce correct dependency declaration. 
  lzc i_lzc (
       .in_i(),
       .cnt_o(),
       .empty_o()
       );

endmodule : fir_submodule