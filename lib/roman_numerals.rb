class RomanNumerals
    
    ROMAN_NUMERALS = {1000 => "M", 900 => "CM", 500 => "D", 100 => "C", 90 => "XC", 10 => "X", 5 => "V", 1 => "I"}
    
    def self.convert(number)
        roman_numerals = ""
        ROMAN_NUMERALS.each do |k,v|
            (number/k).times {roman_numerals << v; number -= k}
        end
        roman_numerals
    end
end 