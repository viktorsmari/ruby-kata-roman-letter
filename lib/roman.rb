class Roman
  attr_accessor :total, :allchar, :current_nr

  def initialize
    @total = 0
    @allchar = ""
    @current_nr = 0
  end

  def next_letter(char)
    @allchar[@current_nr + 1] == char
  end

  def convert_one(letter)
    case letter
    when 'I'
      return -1 if next_letter('V') || next_letter('X')
      return 1
    when 'V'
      #cannot be repeated
      return 5
    when 'X'
      return -10 if next_letter('L') || next_letter('C')
      return 10
    when 'L'
      #cannot be repeated
      return 50
    when 'C'
      return -100 if next_letter('D') || next_letter('M')
      return 100
    when 'D'
      #cannot be repeated
      return 500
    when 'M'
      return 1000
    end
  end

  def rom_to_num(input)
    @allchar = input
    input.each_char.with_index do |char,index|
      @current_nr = index
      @total += convert_one(char).to_i
    end
    @total
  end
end
