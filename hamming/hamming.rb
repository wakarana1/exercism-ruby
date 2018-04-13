require 'minitest/pride'

class Hamming
  def self.compute(dna_1, dna_2)
    raise ArgumentError unless dna_1.length == dna_2.length
    dna_length = 0..dna_1.length
    dna_length.count { |i| dna_1[i] != dna_2[i] } # Enumerable.count counts the number of elements yielding a truthy value
  end
end

module BookKeeping
  VERSION = 3
end
