my_var = "Success"

class MyClass
 @t1 = 0
 @t2 = 1
  # puts "#{my_var} in class"

   def my_method t
     p t
    @t1 =7
    p @t1
    #  puts "#{my_var} in method"
   end
end

p MyClass.instance_variables
obj = MyClass.new
p obj.instance_variables
#obj.my_method
t = 5
obj.my_method t
obj.instance_eval do
  p t
  p @t1
  p instance_variables
end
