#key, value 形式时，数组遍历情况

[0,1,2,3].each do | k |
	p k
end

[0,1,2,3].each do | k, v |
	p k, v
end #=> 0,nil, 1,nil, 2,nil, 3,nil
