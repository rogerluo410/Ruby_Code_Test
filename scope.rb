v1 = 1

class MyClass
    v2 = 2

    p local_variables  #It's a Kernel instance function
  
    def my_method
        v3 = 3
        local_variables
    end

    def my_method1
        v4 = 4
       p  local_variables
        my_method2
        local_variables
    end

    def my_method2
        v5 = 5
        p local_variables 
    end
    p local_variables
end

obj = MyClass.new
p obj.my_method
p obj.my_method
p obj.my_method1
p local_variables
