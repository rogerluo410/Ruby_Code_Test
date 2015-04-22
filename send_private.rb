 class MyClass
         private
         def my_method my_arg
             my_arg * 2
         end
      end
      
      #使用动态派发技术,使用Object#send()取代`点标记符`来调用MyClass#my_method()
      obj = MyClass.new
      #obj.my_method(3)
      #p obj.send(:my_method,3)  #=> 6

class MyClass1
        puts "Enter MyClass1"
        define_method :my_method do | my_arg |
           puts "when the define_method executed"  
           my_arg * 3
        end
        puts "Enter 2"
        p self.instance_methods.grep /^my_method/     
     end
     obj = MyClass1.new
     p obj.my_method(2)  #=>6


class MyClass2
        puts "Enter MyClass2"
      def self.define_component(name)
        puts "When the define_component executed"
        define_method name do | my_arg |
           puts "When the define_method executed"  
           my_arg * 3
        end
      end
        define_component :my_method
        puts "Finish MyClass2"
     end
     obj = MyClass2.new
     p obj.my_method(2)  #=>6

class Foo
   puts "Enter MyClass3"
   def self.udf_class_method
       puts "Create class method"
   end
   def udf_instance_method
       puts "Create instance method"
   end
   puts self.methods.grep /^udf/
   puts self.instance_methods.grep /^udf/
   puts "Finish MyClass3's define"
end

  Foo.udf_class_method
