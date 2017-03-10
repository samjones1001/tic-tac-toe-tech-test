require 'square'

describe Square do

  subject(:square)      { described_class.new }
  let(:player)          { double(:player) }

   describe '#initialize' do
     it 'is not taken at initialization' do
       expect(square.taken).to be(false)
     end
   end

   describe '#set_to_taken' do
     it 'sets the square\'s taken attribute to true' do
       square.set_to_taken(player)
       expect(square.taken).to be(true)
     end

     it 'knows which player has taken the square' do
       square.set_to_taken(player)
       expect(square.taken_by).to eq(player)
     end
   end
end
