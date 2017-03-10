require 'player'

describe Player do

  subject(:player)    { described_class.new('X') }

  describe '#initialize' do
    it 'initializes with the provided name' do
      expect(player.name).to eq('X')
    end
  end
end
