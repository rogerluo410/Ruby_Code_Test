#数组里面是hash成员
#
#

a = [{"type"=>"1", "level"=>"2"}, {"type"=>"2", "deliver_address"=>"sadafsfs", "level"=>"5"}]


a.each do | b |
   b.each_pair do | key, value|
	 print "f: #{key}, #{value} || "
   end
end
