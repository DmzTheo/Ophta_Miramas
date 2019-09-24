require 'test_helper'

class ChirurgiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chirurgies_index_url
    assert_response :success
  end

  test "should get show" do
    get chirurgies_show_url
    assert_response :success
  end

end
