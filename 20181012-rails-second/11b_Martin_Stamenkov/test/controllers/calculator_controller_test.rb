require 'test_helper'

class CalculatorControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

end
