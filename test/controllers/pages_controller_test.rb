require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get book" do
    get :book
    assert_response :success
  end

  test "should get chat" do
    get :chat
    assert_response :success
  end

end
