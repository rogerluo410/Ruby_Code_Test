


def endpoint_test
   test = [1,2,3]
   test << 4 if test[1] > 0 
   test << 5 if test[2] > 0 
end

def endpoint_test1
   test = [1,2,3]
   test << 4 if test[1] > 0
   test[0..-2]
end

print endpoint_test1 #=> [1,2,3]
print endpoint_test #=> [1,2,3,4,5] 一个块 或 函数的逻辑最后走到的地方就是它的endpoint
