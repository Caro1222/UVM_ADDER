class scoreboard extends uvm_scoreboard;
    `uvm_component_utils(scoreboard)
    function new(string name="scoreboard", uvm_component parent=null);
        super.new(name, parent);
    endfunction
    
    bit [7:0] d1;
    bit [7:0] d2;
    bit [8:0] res; 
    
    uvm_analysis_imp #(Item, scoreboard) m_analysis_imp;
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        m_analysis_imp = new("m_analysis_imp", this);
    endfunction
    
    virtual function write(Item item);
        `uvm_info("SCBD", $sformatf("Dato leido: in1=%0d in2=%0d out=%0d",item.in1, item.in2, item.out),UVM_HIGH)
    //    d1 <= item.in1;
    //     d2 <= item.in2;
    //     res <= d1 + d2;
        if (item.out == res) begin
            `uvm_info("SCBD", $sformatf("Operacion correcta! %0d + %0d = %0d", d1, d2, item.out), UVM_HIGH)
        end
    
        else begin
            `uvm_error("SCBD", $sformatf("Operacion Incorrecta! %0d + %0d = %0d no %0d", d1, d2, res, item.out ))
        end
    
        d1 = item.in1;
        d2 = item.in2;
        res = d1 + d2;
     
    endfunction
endclass
