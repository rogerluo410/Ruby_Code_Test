
 def math(a,b)
         yield(a,b)
     end
     
     def teach_math(a,b,&operation)
         puts "Let's do the math:"
         p operation.call(a,b)
         p yield(a,b) 
         puts math(a,b,&operation)
     end
     
     teach_math(2,3) {|x,y| x*y}


  p = proc { return 10 }
  p p.call
  
