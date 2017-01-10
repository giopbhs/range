require 'test_helper'

class AnthoniesControllerTest < ActionController::TestCase
  setup do
    @anthony = anthonies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anthonies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anthony" do
    assert_difference('Anthony.count') do
      post :create, anthony: { description: @anthony.description, title: @anthony.title }
    end

    assert_redirected_to anthony_path(assigns(:anthony))
  end

  test "should show anthony" do
    get :show, id: @anthony
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anthony
    assert_response :success
  end

  test "should update anthony" do
    patch :update, id: @anthony, anthony: { description: @anthony.description, title: @anthony.title }
    assert_redirected_to anthony_path(assigns(:anthony))
  end

  test "should destroy anthony" do
    assert_difference('Anthony.count', -1) do
      delete :destroy, id: @anthony
    end

    assert_redirected_to anthonies_path
  end
end
