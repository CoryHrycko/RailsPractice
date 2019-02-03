require 'rspec'
require 'vending_machine'

describe 'vending machine' do
  let(:vending_machine){VendingMachine.new}

  it 'it starts out powered off' do
    # be_yourmethodtested
    expect(vending_machine).not_to be_on
  end
  it 'it can be powered up' do
    vm = vending_machine
    vm.power_up
    expect(vm).to be_on
  end
end