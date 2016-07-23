require 'test_helper'

class TreatmentsControllerTest < ActionController::TestCase
  test "should get posts" do
    get :posts
    assert_response :success
  end

  test "should get posts_category" do
    get :posts_category
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get write" do
    get :write
    assert_response :success
  end

  test "should get write_complete" do
    get :write_complete
    assert_response :success
  end

  test "should get eidt" do
    get :eidt
    assert_response :success
  end

  test "should get eidt_complete" do
    get :eidt_complete
    assert_response :success
  end

  test "should get delete_complete" do
    get :delete_complete
    assert_response :success
  end

end
