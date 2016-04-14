

def func 
  p "In func..."
end

def func1 &a
  yield if block_given?
end

func1( &func ) #=> "In func..."
               #func_callback.rb:11:in `<main>': wrong argument type String (expected Proc) (TypeError)
               #indicate that function can't be callback, needs to use Proc in Ruby.
