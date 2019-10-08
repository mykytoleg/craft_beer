require 'test_helper'

class BreweryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get brewery_index_url
    assert_response :success
  end

end
