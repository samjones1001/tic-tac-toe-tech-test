require 'game'

describe Game do

  subject(:game)      { described_class.new(player_1, player_2) }
  let(:player_1)      { double(:player_1) }
  let(:player_2)      { double(:player_2) }

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
end
