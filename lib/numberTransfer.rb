class NumberTransfer

  NUMBER_CHARACTER = {
    0 => 'zero',
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

  def transfer(number)
    if number <= 19
      return NUMBER_CHARACTER[number]
    end
    if number > 19
      character_string = ''
      double_number = number % 100 / 10
      single_number = number % 10
      character_string = DOUBLE_NUMBER[double_number]
      if single_number > 0
        character_string +=' ' + NUMBER_CHARACTER[single_number]
      end
      return character_string
    end

  end

end
