#what hash schema is?
#
#
#
h0 = { :id => 1, :name => "hash"}
puts "h0[:id]: #{h0[:id]}"
puts "h0[\"id\"]: #{h0["id"]}"

h = { id: 1, name: "hash"} #How does this schema go ?

#print h[name] #=> if key is variable, raise undefined local variable or method `name' for main:Object (NameError)
puts "h[:name] : #{h[:name]}" #=> if key is a symbol,  
puts "h[\"name\"]: #{h["name"]}" #=> if key is a string,  

#h1 = { id=> 1, name=>"hash"} #How does this schama go ? raise undefined local variable or method `id' for main:Object (NameError) 
#print h1[id]
#print h2[:id]
#print h3["id"]

h2 = { "id"=> 1, "name"=>"hash"} #How dose this schema go ?
#print h2[id] #=> if key is a string but visit it with a variable, raise undefined local variable or method `id' for main:Object (NameError)
puts "h2[:id] : #{h2[:id]}"
puts "h2[\"id\"] : #{h2["id"]}"

#h3 = { "id": 1, "name": "hash"} #syntax error, unexpected ':', expecting => , indicates that that must use `=>`,when key is string, just like h2 in Ruby 
#print h3[id]
#print h3[:id]
#print h3["id"]

h4 = { 0 => "123", "1"=>"456"}
puts "h4[0]:#{h4[0]}"
puts "h4[\"0\"]: #{h4["0"]}"
puts "h4[1]:#{h4[1]}"
puts "h4[\"1\"]:#{h4["1"]}"


#Final Result: 
#h[:name] : hash
#h["name"]: 
#h2[:id] : 
#h2["id"] : 1
#h4[0]:123
#h4["0"]: 
#h4[1]:
#
#OverView:  
#1. key是变量, 则hash形式为 key: value, 用标签访问hash[:key]
#2. key是标签, 则hash形式为 :key => value, 用标签访问hash[:key], 用string失效hash["key"]
#3. key是字符串, 则hash形式为 "key" => value, 用string访问hash["key"], 用标签失效hash[:key]
#4. key是整数, 则hash形式为 0 => value, 用整数访问hash[0]
#
#只有当key为变量时, key: value, 其他形式都是 :key => value, "key"=>value, 0=>value
