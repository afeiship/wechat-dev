require 'test_helper'

class ApisControllerTest < ActionDispatch::IntegrationTest
  test "should get notify" do
    get apis_notify_url
    assert_response :success
  end

end
