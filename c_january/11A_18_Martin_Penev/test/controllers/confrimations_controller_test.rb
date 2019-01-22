require 'test_helper'

class ConfrimationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get confrimations_show_url
    assert_response :success
  end

end
