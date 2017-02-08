# A Minimalist Ruby FIR Implementation

This is a tiny FIR implementation in Ruby.  
Not performant, just fun.


## Overview   

Instantiate an object from this tiny class
with either the name of a CSV file and 
optionally the row that your filter 
coefficients come from, or simply with an
array of your coefficients.  Make calls 
to the next method with an incoming signal
value, get back a filtered value.  All
values are converted to float.  Obviously the
basic idea here is to have the least lines
possible for the computational kernel - 
two whole line! 


## Examples   

Please see example.rb
