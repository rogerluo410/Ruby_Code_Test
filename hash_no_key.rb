# what returns, if key is not exist
#

h = { :a => 1, :b => 2}

h1 = {:a => 1, :c=> nil}

p h[:c] #=>当key没有时， 返回nil

p h1[:c] #=> 当key的值为nil时, 返回nil 



def func **a
  p a #=> {} 空hash
  p "enter without param a"
end


func  #=> 允许 **a 为空 
