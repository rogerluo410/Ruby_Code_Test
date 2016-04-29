#dup , clone, pass reference, pass value.


h = { id: 1, name: "abc"}

h1 = h.dup

h2 = h.clone

p h1

p h2


p h1.equal?(h)
p h2.equal?(h)


self.send :define_method, :func do | **a|
 p  a.equal?(h)	
 p a
 p a.class
 p h.class
# b.call
end

def func1
  p self	
  yield  if block_given?	
end
p "outside: #{self}" 
func1  { p " another block. "}
func(h) { "a block" }

a = 1
p [a].class
