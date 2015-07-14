# A Minimalist Ruby FIR Implementation
# Copyright (c) 2015, Colin Shaw
# Distributed under the terms of the MIT License

require './src/fir.rb'

f = FIR.new [1,2,3]

p f.next(1)
p f.next(1)
p f.next(1)
p f.next(1)
p f.next(1)
