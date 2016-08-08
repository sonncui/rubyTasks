class NumberTransfer

  NUMBER_CHARACTER = {
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen'
  }

  DOUBLE_NUMBER = {
    2 => 'twenty',
    3 => 'thirty',
    4 => 'fourty',
    5 => 'fifty',
    6 => 'sixty',
    7 => 'seventy',
    8 => 'eighty',
    9 => 'ninety'
  }

  UNIT_NUMBER = {
    100 => 'handred',
    1000 => 'thousand',
    1000000 => 'million',
    1000000000 => 'trillion'
  }

  def transfer(number)
    return 'zero' if number == 0
    character_string = ''
    handred_number = number % 1000 / 100
    double_number = number % 100 / 10
    single_number = number % 10
    if handred_number > 0
      character_string = NUMBER_CHARACTER[handred_number]+ ' ' + UNIT_NUMBER[100]+ ' '
    end
    if double_number > 1
      character_string += DOUBLE_NUMBER[double_number] + ' '
      if single_number > 0
        character_string += NUMBER_CHARACTER[single_number]
      end
    elsif single_number > 0
      character_string += NUMBER_CHARACTER[double_number*10+single_number]
    end
    return character_string.strip
  end
end
