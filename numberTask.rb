def eachB(numberArray)
  numberArray.each do |number|
    if shouldPutsFizz(number) && shouldPutsBuzz(number)
      puts 'BuzzFizz '
    elsif shouldPutsFizz(number)
      puts  'Fizz '
    elsif shouldPutsBuzz(number)
      puts 'Buzz '
    else
      puts "#{number} "
    end
  end
end

def shouldPutsFizz(number)
  number % 3 == 0 || number.to_s.include?('3')
end

def shouldPutsBuzz(number)
  number % 5 == 0 || number.to_s.include?('5')
end
