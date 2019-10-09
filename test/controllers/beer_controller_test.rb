require 'test_helper'

class BeerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beer_index_url
    assert_response :success
  end

  test "should get show" do
    get beer_show_url
    assert_response :success
  end

end
