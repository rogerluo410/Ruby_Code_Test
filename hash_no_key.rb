# what returns, if key is not exist
#

h = { :a => 1, :b => 2}

h1 = {:a => 1, :c=> nil}

print h[:c] #=>当key没有时， 返回nil

print h1[:c] #=> 当key的值为nil时... 



def func **a
  print a
  print "enter without param a"
end


func  #=> 允许 **a 为空 
