module RomanNumeral
  def to_roman
    year_array = self.to_s.chars.reverse
    roman_numeral = []
    year_array.each_with_index do |number, i|
      num = number.to_i * (10 ** i)
      if num % 1000 == 0
        roman_numeral[i] = 'M' * (num / 1000)
      elsif num % 100 == 0
        if num == 900
          roman_numeral[i] = 'CM'
        elsif num >= 500 && num <= 800
          roman_numeral[i] = 'D' + ('C' * (num / 100 % 5))
        elsif num == 400
          roman_numeral[i] = 'CD'
        elsif num % 100
          roman_numeral[i] = ('C' * (num / 100))
        end
      elsif num % 10 == 0
        if num == 90
          roman_numeral[i] = 'XC'
        elsif num >= 50 && num <= 80
          roman_numeral[i] = 'L' + ('X' * (num / 10 % 5))
        elsif num == 40
          roman_numeral[i] = 'XL'
        elsif num % 10
          roman_numeral[i] = ('X' * (num / 10))
        end
      else
        if num <= 3
          roman_numeral[i] = 'I' * num
        elsif num == 4
          roman_numeral[i] = 'IV'
        elsif num >= 5 && num <= 8
          roman_numeral[i] = 'V' + ('I' * (num % 5))
        elsif num == 9
          roman_numeral[i] = 'IX'
        end
      end
    end
    roman_numeral.reverse.join
  end
end

class Fixnum
  include RomanNumeral
end

module BookKeeping
  VERSION = 2
end
