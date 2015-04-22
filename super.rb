class A

  def aFunc a, b
      puts "#{a}#{b}"
  end
end

class B < A

  def aFunc c
      puts "Enter B::aFunc"
      b = 1
      #super b,c #This kind of call is ok!
      super #if we call super aFunc without parameters , what will be happened ? The answer is throwing wrong number of arguments exception!
  end
end

b = B.new
b.aFunc 5
