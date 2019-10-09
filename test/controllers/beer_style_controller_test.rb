require 'test_helper'

class BeerStyleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beer_style_index_url
    assert_response :success
  end

  test "should get show" do
    get beer_style_show_url
    assert_response :success
  end

end
