#如何使用hash的fetch方法
#hash.fetch(key [, default] ) [or]
#hash.fetch(key) { | key | block }
#通过给定的 key 从 hash 返回值。如果未找到 key，且未提供其他参数，则抛出 IndexError 异常；如果给出了 default，则返回 default；
#如果指定了可选的 block，则返回 block 的结果。

h = { "a"=> 1, "b"=> 2 }

p h.fetch("a", 3) #=>1 取到了返回key ”a“ 的value

p h.fetch("a") do |key|
  h[key] = 3 
end

p h.fetch("c",3) #=>3  说明fetch只返回替代值3，并且不会入hash中

retval = h.fetch("c") do | key | #=>fetch 带一个块
  h[key] = 3
end

p "retval: #{retval}" #=>3 说明块的 endpoint为返回值， 并非返回整个hash对象

p h #=> { "a"=> 1, "b"=> 2, "c"=>3 }
