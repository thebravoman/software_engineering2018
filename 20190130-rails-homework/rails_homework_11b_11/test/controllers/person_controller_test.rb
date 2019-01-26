require 'test_helper'

class PersonControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get person_create_url
    assert_response :success
  end

  test "should get destroy" do
    get person_destroy_url
    assert_response :success
  end

  test "should get new" do
    get person_new_url
    assert_response :success
  end

  test "should get edit" do
    get person_edit_url
    assert_response :success
  end

  test "should get update" do
    get person_update_url
    assert_response :success
  end

end
