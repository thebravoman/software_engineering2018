require 'test_helper'

class CalcControllerTest < ActionDispatch::IntegrationTest
  test "should get frontend" do
    get calc_frontend_url
    assert_response :success
  end

end
