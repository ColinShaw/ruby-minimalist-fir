# A Minimalist Ruby FIR Implementation
# Copyright (c) 2015, Colin Shaw
# Distributed under the terms of the MIT License

require 'csv'

class FIR

    def initialize(arg,row=0)
        if arg.is_a?String
            @coeffs = CSV.read(arg)[row].map { |x| x = Float(x) }
        elsif arg.is_a?Array
            @coeffs = arg.map { |x| x = Float(x) }
        end
        @signal = Array.new(@coeffs.length) { 0.0 } 
    end

    def next(input,sum=0.0)
        @signal.rotate!(-1)[0] = Float(input)
        @signal.map.with_index { |x,i| sum = sum + x * @coeffs[i] } [-1]     
    end

end
