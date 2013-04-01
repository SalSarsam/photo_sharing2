require 'test_helper'

class ComtsControllerTest < ActionController::TestCase
  setup do
    @comt = comts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comt" do
    assert_difference('Comt.count') do
      post :create, comt: { content: @comt.content, title: @comt.title }
    end

    assert_redirected_to comt_path(assigns(:comt))
  end

  test "should show comt" do
    get :show, id: @comt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comt
    assert_response :success
  end

  test "should update comt" do
    put :update, id: @comt, comt: { content: @comt.content, title: @comt.title }
    assert_redirected_to comt_path(assigns(:comt))
  end

  test "should destroy comt" do
    assert_difference('Comt.count', -1) do
      delete :destroy, id: @comt
    end

    assert_redirected_to comts_path
  end
end
