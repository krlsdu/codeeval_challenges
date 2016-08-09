require "prime"
module SumOfPrimes
  ARRAY_PRIME = []
  def self.total
    find_thousand_prime

    sum = 0
    ARRAY_PRIME.each do |number|
      sum = number + sum
    end
    puts sum
  end

  private
  def self.find_thousand_prime
    Prime.each(8000) do |prime|
      ARRAY_PRIME.push(prime) if ARRAY_PRIME.size < 1000
    end
  end
end

if __FILE__ == $0
  SumOfPrimes.total
end
