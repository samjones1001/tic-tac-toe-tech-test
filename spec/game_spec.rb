require 'game'

describe Game do

  subject(:game)      { described_class.new(player_1, player_2, board) }
  let(:player_1)      { double(:player_1, name: 'X') }
  let(:player_2)      { double(:player_2, name: 'O') }
  let(:board)         { double(:board) }
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

  context 'once the game has started' do

    describe '#play_turn' do
      it 'fills the selected square with the current_player\'s name' do
        allow(board).to receive(:all_squares_taken?).and_return false
        expect(board).to receive(:fill_square).with('X', 'A1')
        game.play_turn('A1')
      end

      it 'ends the game if all squares have been taken' do
        allow(board).to receive(:fill_square)
        allow(board).to receive(:all_squares_taken?).and_return true
        expect { game.play_turn('C1') }.to raise_error('game over - no squares remaining!')
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


end
