require 'test_helper'

class CalcControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get calc_index_url
    assert_response :success
  end

end
