require_relative '../lib/day_trader.rb'
describe '#day_trader' do
  it 'returns the correct days for maximum profit' do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4]) # $15 - $3 == $12
    expect(day_trader([7, 1, 5, 3, 6, 4])).to eq([1, 4]) # $6 - $1 == $5
    expect(day_trader([7, 6, 4, 3, 1])).to eq([0, 0]) # No profit possible
    expect(day_trader([7, 6, 4, 3, 2, 1])).to eq([0, 0]) # No profit possible
  end
end
