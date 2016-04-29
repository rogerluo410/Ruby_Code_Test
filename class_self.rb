# Using class << self in a class or module.
# https://ruby-china.org/topics/10654   在 module 定义时，使用 class << self 的目的是什么呢？
# https://ruby-china.org/topics/4777 Ruby 的常量查找路径问题

#Scene one:
module M1
  #M2的类方法	
  def self.m1_class_func
    p "In m1_class_func, self is #{self}, ancestors is #{self.ancestors}"
  end
end

class C1
#  include M1 

  def self.c1_class_func1
    M1::m1_class_func #=> 必须加域名M1, 此处既不是include扩展也不是extend扩展，而是跨域模块调用！
    p "In c1_class_func1, self is #{self}, ancestors is #{self.ancestors}"
  end

  class << self
    def c1_class_func2
	     M1::m1_class_func
      p "In c1_class_func2, self is #{self}, ancestors is #{self.ancestors}"	    
    end
  end
end


#C1.c1_class_func1
#C1.c1_class_func2

#output:
#=>"In m1_class_func, self is M1, ancestors is [M1]"
#=>"In c1_class_func1, self is C1, ancestors is [C1, M1, Object, Kernel, BasicObject]"
#=>"In c1_class_func2, self is C1, ancestors is [C1, M1, Object, Kernel, BasicObject]"



#Scene two:
module M2
  CT = "M2"	
  #M2的实例方法	
  def m2_class_func
    p "In m2_class_func, self is #{self}, ancestors is #{self.ancestors}"
  end
end

class C2
 extend M2  #扩展成类方法  
 p  self.ancestors
 def self.c2_class_func1
   self.m2_class_func
   p "In c2_class_func1, self is #{self}, ancestors is #{self.ancestors}" #=> "In m2_class_func, self is C2, ancestors is [C2, Object, Kernel, BasicObject]" 用extend 说明M2不会出现在C2的继承树上!
   p "In c2_class_func1, #{self.CT}" #此处报错
 end

 class<<self
   def c2_class_func2
    p "In c2_class_func2, self is #{self}, ancestors is #{self.ancestors}"
    self.m2_class_func #能访问用M2 extend扩展的方法m2_class_func
    p "In c2_class_func2, #{self.CT}"
   end
 end	
end

#C2.c2_class_func1
#C2.c2_class_func2


#output: 
#=>"In m2_class_func, self is C2, ancestors is [C2, Object, Kernel, BasicObject]"
#=>"In c2_class_func1, self is C2, ancestors is [C2, Object, Kernel, BasicObject]"
#=>class_self.rb:51:in `c2_class_func1': undefined method `CT' for C2:Class (NoMethodError)
#	from class_self.rb:63:in `<main>'


#Scene three:  
module M3
  CT = "ok"	
end

class C3
 include M3

 def self.c3_class_func1
	 p "In c3_class_func1, #{CT},#{self::CT} , #{self.const_defined?(:CT)}, #{self.instance_variables}, ancestors is #{self.ancestors} "
	 #p "In c3_class_func1, #{self.CT}, #{self.variables}, #{self.instance_variables}" #class_self.rb:83:in `c3_class_func1': undefined method `CT' for C3:Class (NoMethodError)
         #注意常量的访问方式，不能用调用方法的方式： self.CT (error)  self::CT (right)
 end
 
 CT = "Not ok"
 class<<self
    def c3_class_func2
	   p CG 
	   # p "In c3_class_func2, #{CT},#{self::CT} , #{self.const_defined?(:CT)}, #{self.instance_variables}, ancestors is #{self.ancestors}" #=> class_self.rb:90:in `c3_class_func2': uninitialized constant Class::CT (NameError) why met the error here ?
	    p "In c3_class_func2,#{self::CT}, #{self.const_defined?(:CT)}, #{self.instance_variables}, ancestors is #{self.ancestors}, #{self.singleton_class}, #{self.singleton_methods}"

    end
 end
end

C3.c3_class_func1
C3.c3_class_func2
