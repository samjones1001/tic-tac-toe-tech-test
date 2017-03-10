require 'board'

describe Board do
  subject(:board)     { described_class.new }

  describe '#initialize' do
    it 'creates a grid of nine squares' do
      expect(board.grid.length).to eq(9)
    end
  end

  describe '#fill_square' do
    it 'sets taken to true on the chosen square' do
      board.fill_square('X', 'A1')
      expect(board.grid[:A1].taken).to be(true)
    end

    it 'sets taken_by to the current player\'s name on the chosen square' do
      board.fill_square('X', 'A1')
      expect(board.grid[:A1].taken_by).to eq('X')
    end

    it 'raises an error if the square is already filled' do
      board.fill_square('X', 'A1')
      expect{ board.fill_square('X', 'A1') }.to raise_error
    end
  end

  describe '#all_squares_taken?' do
    it 'knows when there are still squares available' do
      expect(board.all_squares_taken?).to be(false)
    end

    it 'knows when all squares are taken' do
      board.fill_square('X', 'A1')
      board.fill_square('O', 'A2')
      board.fill_square('X', 'A3')
      board.fill_square('O', 'B1')
      board.fill_square('X', 'B2')
      board.fill_square('Y', 'B3')
      board.fill_square('Y', 'C1')
      board.fill_square('X', 'C2')
      board.fill_square('Y', 'C3')
      expect(board.all_squares_taken?).to be(true)
    end
  end

end
