require 'test_helper'

class TechnosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get technos_index_url
    assert_response :success
  end

end
