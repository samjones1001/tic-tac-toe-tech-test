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

end
