require 'test_helper'

class DetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get details_show_url
    assert_response :success
  end

end
