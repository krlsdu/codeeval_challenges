#!/usr/bin/env ruby

module Multipli
	class Tables
		ARRAY1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
		ARRAY2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
		def self.matrix
			ARRAY1.each { |num|
				ARRAY2.map { |multpli| print "#{num * multpli}".rjust(4) }
				puts ""
			}
		end
	end
end
if __FILE__ == $0
	Multipli::Tables.matrix
end
