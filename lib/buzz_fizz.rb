def buzz_fizz(number_array)
    output_string = buzz_fizz_string number_array
    puts output_string
end

def buzz_fizz_string number_array
  output_string = ''
  number_array.each do |number|
    if should_puts_fizz(number) && should_puts_buzz(number)
      output_string += 'FizzBuzz '
    elsif should_puts_fizz(number)
      output_string += 'Fizz '
    elsif should_puts_buzz(number)
      output_string += 'Buzz '
    else
      output_string += "#{number} "
    end
  end
  output_string.strip
end

def should_puts_fizz(number)
  number % 3 == 0 || number.to_s.include?('3')
end

def should_puts_buzz(number)
  number % 5 == 0 || number.to_s.include?('5')
end
