require 'game'

describe 'Game' do

  subject(:game)      { described_class.new }
  let(:player_1)      { double(:player) }
  let(:player_2)      { double(:player) }

  describe '#initialize' do
    it 'creates two new players' do
      expect(Player).to receive(:new).and_return(:player_1)
      expect(Player).to receive(:new).and_return(:player_2)
      new_game = Game.new
    end
  end
end
