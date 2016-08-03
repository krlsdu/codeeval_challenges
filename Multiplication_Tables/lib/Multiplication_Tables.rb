require "Multiplication_Tables/version"

module MultiplicationTables
  ARRAY1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  ARRAY2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

  def self.matrix
    ARRAY1.each{ |num|
      ARRAY2.map {|multpli| print "%-4s" % [num * multpli]}
      puts ""
    }
  end
end
