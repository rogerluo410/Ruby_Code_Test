#In a class, directly calls a method. 

module Ma

  def accepts_nested_attributes_for *arg
          p arg
	  p self

	  self.send :define_method, arg[0] do 
	     p "we are in #{arg[0].to_s}"
	  end
  end
end


class CTest
  extend Ma

  accepts_nested_attributes_for :files_attributes, allow_destroy: true

end

c = CTest.new
c.files_attributes
