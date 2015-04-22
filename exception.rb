#encoding:utf-8
class MyException < Exception
    def getMsg
       "Got it"
    end
end

begin
 raise MyException
 rescue MyException => e
   puts "捕获抛出的自定义异常"
   puts "#{e.getMsg}"
end  

module Mtest

end

puts Mtest.class
puts Module.class
puts Module.superclass

class Cfather
end
class Ctest < Cfather

end

puts Ctest.class
puts Ctest.superclass

c = Ctest.new

puts c.class
#puts c.superclass 

puts Class.class
puts Class.superclass



class Cself
   puts self
   def func
    puts self
  end
end

 a = Cself.new
 a.func

puts Cself.ancestors
#puts a.ancestors

class Cprivate
   def funcA
      puts "funcA"
      self.funcB
   end
   
  public
   @a = 1

   #protected
   private
   def funcB
      puts "funcB"
   end
end

b = Cprivate.new
puts b.@a
#b.funcA

#puts Kernel.private_instance_methods.grep(/^pr/)
#puts Kernel.private_instance_methods
