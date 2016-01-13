

def func a
 case a
 when 1
 when 2
   p "123"
 end
end

a = 1
b = 2

p "a: #{func a}" #=> "a: "  说明when 1 不会执行p "123"
func b #=> "123"


