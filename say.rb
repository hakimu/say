class Say
  def initialize(number)
    raise RangeError.new('Numbers should be 1-99') if number < 0 || number > 99
    @number = number
    @number_translation = { 
      1 => 'one', 
      2 => 'two', 3 => 'three', 
      4 => 'four', 5 => 'five', 
      6 => 'six', 7 => 'seven', 
      8 => 'eight', 9 => 'nine', 
      10 => 'ten', 11 => 'eleven', 
      12 => 'twelve', 13 => 'thirteen', 
      14 => 'fourteen', 15 => 'fifteen',
      20 => 'twenty', 30 => 'thirty',
      40 => 'forty', 50 => 'fifty',
      60 => 'sixty', 70 => 'seventy',
      80 => 'eighty', 90 => 'ninety'
    }
  end
  
  def speak
    translate
  end

  private

  attr_reader :number, :number_translation

  def translate
    case number
    when 0
      'zero'
    when 1..15
      ones_tens_early_mid_teens
    when 16, 17, 18, 19
      late_teens
    when 20..99
      more_than_nineteen
    end
  end

  def ones_tens_early_mid_teens
    number_translation[number]
  end

  def late_teens
    remainder = number % number.floor(-1)
    "#{number_translation[remainder]}teen".gsub(/tt/,'t')
  end
  
  def more_than_nineteen
    if (number % number.floor(-1)).zero?
      number_translation[number]
    else
      remaninder = (number % number.floor(-1))
      "#{number_translation[(number.floor(-1))]}-#{number_translation[remaninder]}"
    end
  end

  def number_to_translation_key
    number.floor(-1)
  end
end
