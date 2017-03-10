require 'board'

describe Board do
  subject(:board)     { described_class.new }

  xdescribe '#initialize' do
    it 'creates a grid of nine squares' do
      expect(board.grid.length).to eq(9)
    end
  end

end
