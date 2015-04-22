obj = Object.new
     eigenclass  =  class << obj
         self
     end
     
     p eigenclass.class #=> Class


class MyClass
    def m
       p "In m..."
    end
end

o = MyClass.new

class << o
   def n 
     p "In n..."
   end
end

o.n

module M
    class << self
         def a_module_class_method
           p "Module class method..."
         end
    end
end

M.a_module_class_method

#k  = Kernel.new

class << Kernel
   def a_kernel_singleton_method
      p "a_kernel_singleton_method..."
   end
end

Kernel.a_kernel_singleton_method

class << Module
def a_module_singleton_method
      p "a_module_singleton_method..."
   end
end

Module.a_module_singleton_method


#private method

class Mc
  class<<self
     #private
     def a_private_class_method
         p "a_private_class_method..."
     end 
  end
end

class Mb < Mc
end

Module.a_module_singleton_method
class << Object
def a_Object_singleton_method
      p "a_Object_singleton_method..."
   end
end

Module.instance_eval do
    define_method :a_Module_instance_method do
         p  "a_Module_instance_method"
    end
end


p Object.class
Class.a_Module_instance_method
Mb.a_Module_instance_method
Mb.a_Object_singleton_method
p Mb.methods.grep /^a_private/
p Mb.methods.grep /^a_kernel_singleton_method/
p Mb.instance_methods.grep /^a_Module/
p Mb.methods.grep /^a_module/
b =Mb.new


class B
   def m
      Object.send :define_method,:n do
          p "In n....."
      end
   end
end

bb = B.new
bb.m
bb.n
