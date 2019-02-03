require 'test_helper'

class VendingMachineControllerTest < ActionDispatch::IntegrationTest
  test "Start out powered off" do
    # assert true

    # access the index url
    get vending_machine_index_url
    #assert that the sending machine is powered off.\
    # assert controller rails response contains a piece of data.
    assert !session[:vending_machine_power_state]
  end
end
