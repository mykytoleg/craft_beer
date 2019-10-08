require 'test_helper'

class StateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get state_index_url
    assert_response :success
  end

end
