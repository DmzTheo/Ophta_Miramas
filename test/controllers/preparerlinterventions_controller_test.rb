require 'test_helper'

class PreparerlinterventionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get preparerlinterventions_show_url
    assert_response :success
  end

end
