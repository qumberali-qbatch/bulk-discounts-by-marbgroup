require 'test_helper'

class SaleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sale_index_url
    assert_response :success
  end

  test "should get show" do
    get sale_show_url
    assert_response :success
  end

end
