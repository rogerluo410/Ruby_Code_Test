require './module_test'

class C1
	include M1::M2
        
	def name_show
		self.name
	end
end


c = C1.new
c.name_show

c.name
