require 'test_helper'

class QscarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qscar_index_url
    assert_response :success
  end

end
