require 'test_helper'

class Calc2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get calc2_index_url
    assert_response :success
  end

end
