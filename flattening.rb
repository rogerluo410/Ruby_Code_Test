#
class Flatten
    public
    @local_v1 = "Within_Flat"
    @@class_v1 = "A class variable"
    #define instance methods with def and Module#define
    def m1
        puts @@class_v1
        @local_v1 = 1
        local_var = 3
    end 

    define_method :m2 do
        @local_v2 = 2   
        puts "123" 
    end
  
    puts @local_v1  #=> Within_Flat 
end

#puts Flatten.@local_v1 #=>exception: flattening.rb:17: syntax error, unexpected tIVAR
#@puts Flatten.@@class_v1
f = Flatten.new
#p f.@@class_v1
f.m1
r=f.m2
puts r
puts f.instance_variables
