require 'square'

describe Square do

  subject(:square)      { described_class.new }

   describe '#initialize' do
     it 'is not taken at initialization' do
       expect(square.taken).to eq(false)
     end
   end
end
