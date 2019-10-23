require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get telechargements" do
    get pages_telechargements_url
    assert_response :success
  end

end
