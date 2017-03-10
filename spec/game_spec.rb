require 'game'

describe Game do

  subject(:game)      { described_class.new(player_1, player_2, board) }
  let(:player_1)      { double(:player_1) }
  let(:player_2)      { double(:player_2) }
  let(:board)         { double(:board, grid: grid) }
  let(:grid)          { double(:grid) }

  describe '#initialize' do
    it 'creates two new players' do
      expect(Player).to receive(:new).and_return(:player_1)
      expect(Player).to receive(:new).and_return(:player_2)
      new_game = Game.new
    end

    it 'by default creates players with the names X and O' do
      new_game = Game.new
      expect(new_game.player_1.name).to eq('X')
      expect(new_game.player_2.name).to eq('O')
    end

    it 'sets player_1 as the current player' do
      expect(game.current_player).to eq(player_1)
    end

    it 'creates a new board' do
      expect(Board).to receive(:new)
      new_game = Game.new
    end
  end

  xdescribe '#play_turn' do
    it 'fills the selected square with the current_player\'s name' do
      game.play_turn('A1')
      expect(board.grid['A1']).to eq('X')
    end
  end

  describe '#switch_turn' do
    it 'changes the current player' do
      game.switch_turn
      expect(game.current_player).to eq(player_2)
    end

    it 'can deal with multiple switches' do
      game.switch_turn
      game.switch_turn
      expect(game.current_player).to eq(player_1)
    end
  end
end
