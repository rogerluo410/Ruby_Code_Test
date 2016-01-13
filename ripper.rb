require 'ripper'

p Ripper.tokenize("x > 1 ? 'foo' : 'bar'")  #ruby解释器的分词模块
