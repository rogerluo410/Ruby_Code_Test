#proc can be called by recursion 
p = Proc.new do | param |
   p "Display:#{param}"
   if param == 1
      10
   else
      p.call(1) #enter another scope!
   end 
end

p.call(2)
