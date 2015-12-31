#实践块的使用 
#
#

obj = Proc.new { | x  | x }

obj1 = ->(x) { x }

[*obj1].each { | b | print 5.tap(&b) } 


