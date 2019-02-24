require 'rspec'
require 'rails_helper'

describe 'Class Driver' do
  it 'should create new instance' do
    dr1 = Driver.new
    result1 = dr1.driver('')
    expect(result1).to eq ''
  end
  it ' accept new names as arguments.' do
    dr2 = Driver.new
    result2 = dr2.driver('John')
    expect(result2).to eq 'John'
  end
  it 'accepts a distance traveled' do
    dr3 = Driver.new
    result3 = dr3.driving1('John', '200')
    expect(result3).to eq '200'
  end
  it ''
end