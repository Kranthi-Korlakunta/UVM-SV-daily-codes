class comp extends uvm_component;
  //create a uvm_component_registry wrapper,typedeffed by type_id
  typedef uvm_component_registry #(comp,"comp") type_id;
  //static function get_type() to get type_id
  static function type_id get_type();
    return type_id::get();
  endfunction
  //function get_type_name() to get type_name
  function string get_type_name();
    return "comp";
  endfunction
  function new(string name, uvm_component parent);
  	super.new(name, parent);
  endfunction
endclass
