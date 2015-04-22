#A::classFunc
class A
   def self.classFunc
       p "In A::classFunc"
   end
end

class B < A
   def instanceFunc
      p "In B::instanceFunc"
      A.classFunc
      B.classFunc 
   end
end

b = B.new
b.instanceFunc
