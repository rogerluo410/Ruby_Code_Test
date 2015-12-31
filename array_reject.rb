
#test reject func 
#

a = [1,2,3,4]

a.reject! { | i |  i < 0 }

print a 
