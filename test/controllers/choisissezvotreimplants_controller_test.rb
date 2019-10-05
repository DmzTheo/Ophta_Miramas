require 'test_helper'

class ChoisissezvotreimplantsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get choisissezvotreimplants_show_url
    assert_response :success
  end

end
