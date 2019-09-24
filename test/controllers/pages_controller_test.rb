require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get lunettes" do
    get pages_lunettes_url
    assert_response :success
  end

  test "should get centre" do
    get pages_centre_url
    assert_response :success
  end

end
