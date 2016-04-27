require 'test_helper'

class MytestsControllerTest < ActionController::TestCase
  setup do
    @mytest = mytests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mytests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mytest" do
    assert_difference('Mytest.count') do
      post :create, mytest: {  }
    end

    assert_redirected_to mytest_path(assigns(:mytest))
  end

  test "should show mytest" do
    get :show, id: @mytest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mytest
    assert_response :success
  end

  test "should update mytest" do
    patch :update, id: @mytest, mytest: {  }
    assert_redirected_to mytest_path(assigns(:mytest))
  end

  test "should destroy mytest" do
    assert_difference('Mytest.count', -1) do
      delete :destroy, id: @mytest
    end

    assert_redirected_to mytests_path
  end
end
