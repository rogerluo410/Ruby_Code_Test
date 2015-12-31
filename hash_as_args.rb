


h = {"0"=>{"type"=>"1", "level"=>"2"}, "1"=>{"type"=>"2", "level"=>"5"}}

def func **args
  print args	
end


#func h  #=> wrong number of arguments (1 for 0) 显然 **args 参数接受 h这样写法的实参。  


h1 = {"type"=>"2", "level"=>"5"}

#func h1 #=> hash_as_args.rb:6:in `func': wrong number of arguments (1 for 0)  h1 is same as h
#

h2 = {:type=>"2", :level=>"5"}

func h2 #=> successful!, 说明 **args 只接受key为symbol的hash结构

