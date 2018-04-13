class Sieve

  def initialize(number)
    @number = number
  end

  def primes
    prime_range = (2..@number).to_a
    if @number > 1
      prime_range.map do |number|
        prime_range.delete_if { |num| num != number && num % number == 0 }
      end
    end
    return prime_range
  end
end

module BookKeeping
  VERSION = 1
end
