class Board

  attr_reader :grid

  def initialize(square = Square)
    @grid = {}
    [*'A'..'C'].each do |letter|
      [*1..3].each do |number|
        grid["#{letter}#{number}".to_sym] = square.new
      end
    end
  end
end
