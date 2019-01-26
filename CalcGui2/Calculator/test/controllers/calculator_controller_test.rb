require 'test_helper'

class CalculatorControllerTest < ActionDispatch::IntegrationTest
  test "should get Input1" do
    get calculator_Input1_url
    assert_response :success
  end

end
