require 'test_helper'

class MyfinalworkControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myfinalwork_index_url
    assert_response :success
  end

end
