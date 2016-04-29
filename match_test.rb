require 'time' 
count = 0
 arg = "武汉广播电视台文体频道    —5 节目表"
     if /电视台/.match(arg)
	           count += 1
		       end

         if /频道/.match(arg)
		       count += 1
		           end

	     if /节目表/.match(arg)
		           count += 1 
			       end
	     
	 
    p count

    
    p Time.parse("safa33:39")
