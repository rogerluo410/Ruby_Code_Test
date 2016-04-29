# https://ruby-china.org/topics/4777
module M1
  CT = "ok"
end

class C0
  CC = "Not ok"
  def self.method0
   p "In method0"
  end
end

class C1 < C0
  CK = "ck"
  include M1

  def self.method1
     puts self
     puts "#{CK} in method1"
     #puts "#{CT} in method1"
  end

  p self.singleton_methods

  class << self
    def method2
      puts self
      puts "#{CC} in method2"
      puts "#{CK} in method1"
      puts "#{CT} in method2"
    end
  end
end

C1.method1
C1.method2 
