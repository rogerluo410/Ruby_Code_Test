VAL = 'Global'
 
module Foo
  VAL = 'Foo Local'
 
  class Bar
    def value1
       VAL
    end
  end
end
 
class Foo::Bar
  def value2
     VAL
  end
end

#What will be the value of each of the following:
p Foo::Bar.new.value1 #=> 'Foo Local'
p Foo::Bar.new.value2 #=> 'Global'
#########

# What will val1 and val2 equal after the code below is executed? Explain your answer.
val1 = true and false  # hint: output of this statement in IRB is NOT value of val1!
val2 = true && false

# (val1 = true) and false    # results in val1 being equal to true
# val2 = (true && false)     # results in val2 being equal to false
#########

#Write a function that sorts the keys in a hash by the length of the key as a string. For instance, the hash: 
{ abc: 'hello', 'another_key' => 123, 4567 => 'third' }
#should result in:
["abc", "4567", "another_key"]

hsh.keys.map(&:to_s).sort_by(&:length)

