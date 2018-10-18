require 'test_helper'

class QuadraticControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quadratic_index_url
    assert_response :success
  end

end
