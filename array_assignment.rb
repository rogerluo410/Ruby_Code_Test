#each, map, map!
#each returns the last sentence which belongs to self object in block
#map returns a new object
#map! returns the object itself

params = [1,2,3,4,5]

files = params.each do | key |
	[] << key  #self中，不会产生新的数组, return self.last_block 返回self中的最后一个语句
end

file2 = params.each do | key |
	key
end

#file3 = params.each(&:key)  #params must be an object with attr_reader marco

files1 = params.map do | key|

	key+1
end


#params.map! do | key |
#	key + 1
#end

puts  "files:#{files}"  #第一种方法会使files指向params数组本身  
puts  "files1:#{files1}"
puts  "file2:#{file2}"
#puts  "file3:#{file3}"
puts  "params:#{params}"
puts  "params:#{params}"


#returns:
#=> 2,3,4,5,6  files
#=> 2,3,4,5,6  files1
#=> 2,3,4,5,6  params
#=> 2,3,4,5,6  params
