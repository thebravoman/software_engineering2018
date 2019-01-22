require 'test_helper'

class LoginSystemControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get login_system_login_url
    assert_response :success
  end

  test "should get logout" do
    get login_system_logout_url
    assert_response :success
  end

end
