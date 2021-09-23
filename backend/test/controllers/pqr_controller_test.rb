require "test_helper"

class PqrControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pqr_index_url
    assert_response :success
  end
end
