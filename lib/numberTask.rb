def buzz_fizz(number_array)
  number_array.each do |number|
    if should_puts_fizz(number) && should_puts_buzz(number)
      puts 'BuzzFizz '
    elsif should_puts_fizz(number)
      puts  'Fizz '
    elsif should_puts_buzz(number)
      puts 'Buzz '
    else
      puts "#{number} "
    end
  end
end

def should_puts_fizz(number)
  number % 3 == 0 || number.to_s.include?('3')
end

def should_puts_buzz(number)
  number % 5 == 0 || number.to_s.include?('5')
end
