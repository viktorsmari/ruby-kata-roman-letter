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
      (next_letter('V') || next_letter('X'))? -1 : 1
    when 'V'
      5
    when 'X'
      (next_letter('L') || next_letter('C'))? -10 : 10
    when 'L'
      50
    when 'C'
      (next_letter('D') || next_letter('M'))? -100 : 100
    when 'D'
      500
    when 'M'
      1000
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
