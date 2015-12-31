require './dsl'

Smokestack.define do
      factory User do
	name "Gabe BW"
	pet_name "Toto"
      end
end

user = Smokestack.build(User)
puts user.name
#=> "Gabe BW"
puts user.pet_name
##=> "Toto"
#
other_user = Smokestack.build(User, name: 'Bob')
puts other_user.name
##=> "Bob"
puts other_user.pet_name
##=> "Toto"
