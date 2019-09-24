require 'test_helper'

class BilancliniquepreoperatoiresControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get bilancliniquepreoperatoires_show_url
    assert_response :success
  end

end
