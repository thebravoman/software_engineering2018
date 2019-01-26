require 'test_helper'

class AttendancesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get attendances_create_url
    assert_response :success
  end

  test "should get destroy" do
    get attendances_destroy_url
    assert_response :success
  end

end
