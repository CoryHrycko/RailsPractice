require 'rspec'
require 'reverser'

describe 'reverser' do
  it 'gives back an empty string for nil' do
    reverser = Reverser.new
    result = reverser.reverse(nil)
    expect(result).to eq ''
  end
  it 'gives back the identical character for a single character'do
    reverser = Reverser.new
    result = reverser.reverse('a')
    expect(result).to eq 'a'
  end
end