require 'benchmark'

data = (0..50000000)

Benchmark.bm do |x|
	  x.report(:find) { data.find {|number| number > 40000000 } }
	 x.report(:bsearch) { data.bsearch {|number| number > 40000000 } }
end

