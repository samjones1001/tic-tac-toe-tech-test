require 'game'

describe Game do

  subject(:game)      { described_class.new }
  let(:player_1)      { double(:player_1) }
  let(:player_2)      { double(:player_2) }

  describe '#initialize' do
    it 'creates two new players' do
      expect(Player).to receive(:new).and_return(:player_1)
      expect(Player).to receive(:new).and_return(:player_2)
      new_game = Game.new
    end

    it 'by default creates players with the names X and O' do
      expect(game.player_1.name).to eq('X')
      expect(game.player_2.name).to eq('O')
    end
  end
end
