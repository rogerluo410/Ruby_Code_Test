#proc  lambda 的不同之处
#

def foo
  f = Proc.new { next "return from foo from inside proc" }
  f.call # control leaves foo here
  return "return from foo" 
end
p foo #=> "return from foo"


def foo1
  f = Proc.new {  "return from foo from inside proc" }
  f.call # control leaves foo here
  break #=> must in a loop
 # p "walk here..."
end
p foo1 #=> "return from foo"
