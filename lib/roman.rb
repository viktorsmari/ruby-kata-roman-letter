class Roman
  attr_accessor :total

  def initialize
    @total = 0
  end

  def convert_one(letter)
    case letter
    when 'I'
      return 1
    when 'V'
      return 5
    when 'X'
      return 10
    when 'L'
      return 50
    when 'C'
      return 100
    when 'D'
      return 500
    when 'M'
      return 1000
    end
  end

  def rom_to_num(input)
    input.each_char do |i|
      @total += convert_one(i).to_i
    end
    @total
  end
end
