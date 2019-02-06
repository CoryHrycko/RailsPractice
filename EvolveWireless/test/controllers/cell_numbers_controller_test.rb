require 'test_helper'

class CellNumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cell_number = cell_numbers(:one)
  end

  test "should get index" do
    get cell_numbers_url
    assert_response :success
  end

  test "should get new" do
    get new_cell_number_url
    assert_response :success
  end

  test "should create cell_number" do
    assert_difference('CellNumber.count') do
      post cell_numbers_url, params: { cell_number: { relative: @cell_number.relative, relative: @cell_number.relative, relative: @cell_number.relative } }
    end

    assert_redirected_to cell_number_url(CellNumber.last)
  end

  test "should show cell_number" do
    get cell_number_url(@cell_number)
    assert_response :success
  end

  test "should get edit" do
    get edit_cell_number_url(@cell_number)
    assert_response :success
  end

  test "should update cell_number" do
    patch cell_number_url(@cell_number), params: { cell_number: { relative: @cell_number.relative, relative: @cell_number.relative, relative: @cell_number.relative } }
    assert_redirected_to cell_number_url(@cell_number)
  end

  test "should destroy cell_number" do
    assert_difference('CellNumber.count', -1) do
      delete cell_number_url(@cell_number)
    end

    assert_redirected_to cell_numbers_url
  end
end
