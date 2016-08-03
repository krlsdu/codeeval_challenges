#!/usr/bin/env ruby
# require "Multiplication_Tables/version"
class MultiplicationTables
  ARRAY1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  ARRAY2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

  def matrix
    ARRAY1.each{ |num|
      ARRAY2.map {|multpli| print "%-4s" % [num * multpli]}
      puts ""
    }
  end
end
if __FILE__ == $0
  Mult = MultiplicationTables.new
  Mult.matrix
end
