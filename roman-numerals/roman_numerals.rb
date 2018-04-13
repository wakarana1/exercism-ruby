module RomanNumeral

    ROMAN_NUMERAL_CHART = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }.freeze

  def to_roman

    year = self
    roman_numeral = ''

    ROMAN_NUMERAL_CHART.each do |number, roman|
      while year >= number
        roman_numeral += roman
        year -= number
      end
    end

    roman_numeral
  end
end

class Fixnum
  include RomanNumeral
end

module BookKeeping
  VERSION = 2
end
