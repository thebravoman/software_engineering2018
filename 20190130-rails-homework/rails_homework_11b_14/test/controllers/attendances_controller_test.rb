require 'test_helper'

class AttendancesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get attendances_new_url
    assert_response :success
  end

  test "should get show" do
    get attendances_show_url
    assert_response :success
  end

  test "should get destroy" do
    get attendances_destroy_url
    assert_response :success
  end

end
