require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get satire" do
    get :satire
    assert_response :success
  end

  test "should get editorial" do
    get :editorial
    assert_response :success
  end

  test "should get other" do
    get :other
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get write" do
    get :write
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end
