#and, or, not, &&, ||, !  
#The same and difference of these operators
#如果是true/false判断，最好用 and/or 并加入（）中。
#如果是操作数判断，最好用 &&/||， 它会返回最左非空的值。

p "and, or :  "
p 1 and 2 #=> 1
p (1 and 2) #=> 2
p 1 or 2 #=>1 
p (1 or 2) #=>1
p 1 and nil #=>1
p nil and 1 #=>nil
p (nil and 1) #=>nil

p "&&, || : "
p 1 && 2 #=> 2
p (1 && 2) #=> 2
p 1 || 2 #=> 1
p (1 || 2) #=> 1
p 1 && nil #=> nil 
p nil && 1 #=> nil

p "nil or/|| non-zero"
p nil or 1 #=> nil
p (nil or 1 ) #=> 1
p 1 or nil #=> 1
p nil || 1 #=> 1
p 1 || nil #=> 1
p 0 || 1 #=> 0  只会判断非空，不会判断0值！
p 0 || nil #=> 0
p nil || nil #=> nil

p "boolean and boolean :  "
p 1==1 and 2==2 #=>true 
p 1==2 and 2==2 #=>false
p 1==1 and 1==2 #=>true  这里为true... 
p 1==1 && 1==2 #=>false  如果两个boolean逻辑判断，没有()优先级操作符，最好用&&、|| 操作符
p (1==1 and 1==2) #=>false
