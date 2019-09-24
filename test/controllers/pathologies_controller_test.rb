require 'test_helper'

class PathologiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pathologies_index_url
    assert_response :success
  end

  test "should get show" do
    get pathologies_show_url
    assert_response :success
  end

end
