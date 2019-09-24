require 'test_helper'

class ConsignepostoperatoiresControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get consignepostoperatoires_show_url
    assert_response :success
  end

end
