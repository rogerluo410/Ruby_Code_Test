#ruby 的IO模块

read, write = IO.pipe
Process.fork do
	  write.puts "test"
end
Process.fork do
	  write.puts 'test 2'
end

Process.wait
Process.wait

write.close
puts read.read
read.close
