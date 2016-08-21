require_relative './transfer_helper'

class NumberTransfer
  include Helper

  def transfer(number)
    number = number.to_i
    return 'zero' if number == 0
    unit_count = 0
    number_s = number.to_s
    outer_string = ''

    while number_s.length >= 1 do
      if number_s.length > 3
        outer_string = transfer_three_digit(number_s.slice(-3, 3).to_i) + ' ' + NUMBER_UNIT[unit_count]+ ' ' + outer_string
        number_s = number_s.slice(0, number_s.length - 3)
      else
        outer_string = transfer_three_digit(number_s.slice(0, 3).to_i) + ' ' + NUMBER_UNIT[unit_count] + ' ' + outer_string
        number_s = ''
      end
      unit_count = unit_count + 1
    end
    return outer_string.strip
  end

  private
  def transfer_three_digit(number)
    character_string = ''
    handred_number = number / 100
    tens_number = number % 100 / 10
    single_number = number % 10
    if handred_number > 0
      character_string = NUMBER_CHARACTER[handred_number]+ ' ' + HANDRED + ' '
    end
    if tens_number > 1
      character_string += TENS_NUMBER[tens_number] + ' '
      if single_number > 0
        character_string += NUMBER_CHARACTER[single_number]
      end
    elsif single_number > 0
      character_string += NUMBER_CHARACTER[tens_number*10+single_number]
    end
    return character_string.strip
  end
end
