require "test_helper"

class CategoriaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get categoria_index_url
    assert_response :success
  end
end
