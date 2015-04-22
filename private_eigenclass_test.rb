 #private method
#encoding = utf-8 
class Mc
  class<<self
     private
     def a_private_class_method  #to be class method
         p "a_private_class_method..."
     end
  end
end

class Mb < Mc

end

p Mb.methods.grep /^a_private/ #如果Mc中加入private,则此处输出空
b =Mb.new
class << b  #instance eigen class
   def a_private_class_method
       Mc.a_private_class_method
   end
end
b.a_private_class_method  #=>  undefined method `a_private_class_method' for #<Mb:0x000000015eff28> (NoMethodError)
                           #对象无法调用类方法  
