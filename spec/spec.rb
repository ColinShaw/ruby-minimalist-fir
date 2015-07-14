# A Minimalist Ruby FIR Implementation
# Copyright (c) 2015, Colin Shaw
# Distributed under the terms of the MIT License

require 'test/unit'
require '../src/fir.rb'

class TestFIR < Test::Unit::TestCase

    def test_monotone
        fir = FIR.new([1,2,3])
        assert_equal(1,fir.next(1))
        assert_equal(3,fir.next(1))
        assert_equal(6,fir.next(1))
        assert_equal(6,fir.next(1))
        assert_equal(6,fir.next(1))
        assert_equal(6,fir.next(1))
    end

    def test_non_monotone
        fir = FIR.new([2,3,1])
        assert_equal(2,fir.next(1))
        assert_equal(5,fir.next(1))
        assert_equal(6,fir.next(1))
        assert_equal(4,fir.next(0))
        assert_equal(1,fir.next(0))
        assert_equal(0,fir.next(0))
    end

end
