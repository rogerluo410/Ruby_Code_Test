

a = [1,5,2,7]

b = a.tap do | c |   #tap 将object 自己传入block中当参数
	c[1] = c[1] + 1 if c[1] > 2
end

print b
