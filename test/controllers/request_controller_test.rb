require 'test_helper'

class RequestControllerTest < ActionDispatch::IntegrationTest
  test "should get save" do
    get request_save_url
    assert_response :success
  end

end
