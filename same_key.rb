#数组转hash，当有相同的key时的解决办法
# { 0 => [1,2,3]}
#


a = [1,2,3,4,5].map { | i |
	["key",i]
}.to_h

p a #=> key=5