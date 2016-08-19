require 'test_helper'

class CandyStoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get candy_store_index_url
    assert_response :success
  end

  test "should get show" do
    get candy_store_show_url
    assert_response :success
  end

  test "should get new" do
    get candy_store_new_url
    assert_response :success
  end

  test "should get edit" do
    get candy_store_edit_url
    assert_response :success
  end

end
