class Test
 def name 
  p "In name method..."
 end

 def sexy
  p "In sexy method..."	 
 end

 def yield_name &n 
    #yield
	 yield self
    #yield if block_given?
 end
end

#p Test.methods
#p Test.instance_methods

t = Test.new
a = []
a << t
a.map &:name #=> "In name method..."

t.yield_name &:sexy #=> "In sexy method..."

