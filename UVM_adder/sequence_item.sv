class Item extends uvm_sequence_item;
    `uvm_object_utils(Item)
    rand bit [7:0] in1;
    rand bit [7:0] in2;
    bit [8:0] out;

    virtual function string convert2str();
        return $sformatf("in1=%0d, in2=%0d, out=%0d", in1, in2, out);
    endfunction

    function new(string name = "Item");
        super.new(name);
    endfunction
endclass