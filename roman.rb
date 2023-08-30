def old_roman_numeral number
    roman_number = []
    if number >= 1000
        x = number/1000
        roman_number.fill('M', roman_number.size, x)
        number = number%(x*1000)
    end

    if number >= 500
        x = number/500
        roman_number.fill('D', roman_number.size, x)
        number = number%(x*500)
    end

    if number >= 100
        x = number/100
        roman_number.fill('C', roman_number.size, x)
        number = number%(x*100)
    end

    if number >= 50
        x = number/50
        roman_number.fill('L', roman_number.size, x)
        number = number%(x*50)
    end

    if number >= 50
        x = number/50
        roman_number.fill('L', roman_number.size, x)
        number = number%(x*50)
    end

    if number >= 10
        x = number/10
        roman_number.fill('X', roman_number.size, x)
        number = number%(x*10)
    end

    if number >= 5
        x = number/5
        roman_number.fill('V', roman_number.size, x)
        number = number%(x*5)
    end

    if number >= 1
        x = number
        roman_number.fill('I', roman_number.size, x)
        number = number%x
    end

   
    puts "That is #{roman_number.join} in Roman numerals." 
    
    if number != 0
        puts "You have a reminder of #{number.to_s} that you have not converted properly. Try again."        
    end
end

puts 'Give me a number, from like, 1-3000.'
number = gets.chomp.to_i
old_roman_numeral number

