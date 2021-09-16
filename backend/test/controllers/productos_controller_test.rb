require "test_helper"

class ProductosControllerTest < ActionDispatch::IntegrationTest
  test "should get productos" do
    get productos_productos_url
    assert_response :success
  end
end
