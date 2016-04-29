# 模仿加入 require will_paginate/array后， 数组也可以使用分页方法. 


module WillPageArray
  def paginate(page, per_page)
    self[page..per_page]	  
  end

  #def self.included(base)
  #  base.include self	  
  #end
end


Array.include(WillPageArray)
