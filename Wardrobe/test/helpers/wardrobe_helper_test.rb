require 'test_helper'
require 'minitest/mock'

class WardrobeHelperTest < ActiveSupport::TestCase
  test 'chooses heavy coat when it''s cold (stub)' do
    mock = Minitest::Mock.new
    def mock.current_temp
      0
    end

    WeatherService.stub :new, mock do
      wh = WardrobeHelper.new
      assert_equal 'heavy', wh.coat_for_today
    end
  end

  test 'chooses heavy coat when it''s cold (mock)' do
    mock = Minitest::Mock.new
    mock.expect :current_temp, 0

    WeatherService.stub :new, mock do
      wh = WardrobeHelper.new
      assert_equal 'heavy', wh.coat_for_today
    end
    assert_mock mock
  end
end