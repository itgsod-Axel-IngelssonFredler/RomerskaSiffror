def romanize(arabic_numbers)
  raise ArgumentError, 'can not encode zero' if arabic_numbers.zero?
  raise ArgumentError, 'can not encode negative number' if arabic_numbers < 0
  arabic_converted_list = []
  roman_numbers={ 1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV',  5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII',
                  9 => 'IX', 10 => 'X', 40 => 'XL', 50 => 'L', 90 => 'XC', 100 => 'C', 400 => 'CD', 500 => 'D', 900 => 'CM', 1000 => 'M'}
  roman_numbers.each_key { |key| block }
    if key == arabic_numbers
      arabic_converted_list << roman_numbers[key]
    else
    end
      output = arabic_converted_list


      return output

end

p romanize(1)