  class DS
    def get_cpu_info(id)
        "2.16Ghz"
    end
    
    def get_cpu_price(id)
        150
    end
    p  self.instance_methods.grep(/^get_cpu_info$/)
  end
  
  class Computer
    def initialize id, data_source
        @id = id
        @data_source = data_source
        data_source.methods.grep(/^get_cpu_info$/) { 
           Computer.class_eval do
         
           Computer.define_component("cpu") 
           end
         }
    end
    
    def self.define_component(name)
        define_method(name) do
          info   = @data_source.send "get_#{name}_info", @id
          price  = @data_source.send "get_#{name}_price", @id
          result = "#{name.capitalize} : #{info} ($#{price})"
          return "*#{result}" if price >= 100
          result
        end
    end
    #define_component :cpu
  end

ds = DS.new
cp = Computer.new(1,ds)
p cp.cpu
