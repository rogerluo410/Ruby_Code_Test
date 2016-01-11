#数组转哈希的方式
arr = [ 0, "123", 1, "456"]

#h = arr.to_h #=>array_to_hash.rb:4:in `to_h': wrong element type Fixnum at 0 (expected array) (TypeError)
              #key为整型时 报错！
arr1 = [ "0", "123", "1", "456"] #=>array_to_hash.rb:8:in `to_h': wrong element type String at 0 (expected array) (TypeError)

#h = arr1.to_h 

arr2 = [ [0,"123"], [1,"456"]]

h = arr2.to_h #=>{0=>"123", 1=>"456"}  需要用二维数组来转换hash
p h

#or
a = [0, "item 2", 1, "item 4"]
h2 = Hash[*a] # => { 0 => "item 2", 1 => "item 4" }   to_h 和 Hash[*a] 两种转换的不同
p h2

h1 = { 0 => "234", 1 => "567"}
p h1 


#hash to array
h3 = { 0 => "234", 1 => "567"}

p h3.to_a #=>[[0, "234"], [1, "567"]]
p h3.keys #=>[0, 1] 返回key的数组
p h3.values #=>["234","567"] 返回值的数组
