require 'test_helper'

class MessegesControllerTest < ActionController::TestCase
  setup do
    @messege = messeges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messeges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create messege" do
    assert_difference('Messege.count') do
      post :create, messege: { body: @messege.body, name: @messege.name, state: @messege.state, topic: @messege.topic }
    end

    assert_redirected_to messege_path(assigns(:messege))
  end

  test "should show messege" do
    get :show, id: @messege
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @messege
    assert_response :success
  end

  test "should update messege" do
    put :update, id: @messege, messege: { body: @messege.body, name: @messege.name, state: @messege.state, topic: @messege.topic }
    assert_redirected_to messege_path(assigns(:messege))
  end

  test "should destroy messege" do
    assert_difference('Messege.count', -1) do
      delete :destroy, id: @messege
    end

    assert_redirected_to messeges_path
  end
end
