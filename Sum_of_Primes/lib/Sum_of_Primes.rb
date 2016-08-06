require "prime"
module SumOfPrimes
	def self.total
		sum = 0
		array_prime = []
		Prime.each(8000) do |prime|
			array_prime.push(prime) if array_prime.size < 1000
		end
		array_prime.each do |number|
			sum = number + sum
		end
		puts sum
	end
end

if __FILE__ == $0
	SumOfPrimes.total
end

