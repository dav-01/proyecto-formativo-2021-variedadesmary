require "test_helper"

class PqrsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pqrs_index_url
    assert_response :success
  end

  test "should get new" do
    get pqrs_new_url
    assert_response :success
  end

  test "should get edit" do
    get pqrs_edit_url
    assert_response :success
  end

  test "should get show" do
    get pqrs_show_url
    assert_response :success
  end
end
