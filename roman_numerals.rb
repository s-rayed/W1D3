def to_roman(num)

roman_numeral = ""

numerals = {

  1000 => 'M',
  500 => 'D',
  100 => 'C',
  50 => 'L',
  10 => 'X',
  5 => 'V',
  1 => 'I'

}
  numerals.each do |number, roman|
    while num >= number
      roman_numeral << roman
      num -= number
    end
  end
  roman_numeral
end

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(551) == "DLI"
