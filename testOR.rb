#test ||=, ||

str = nil

str1 = str || ""

str ||= "123"

p str1 #=> "" 
p str  #=> "123"

