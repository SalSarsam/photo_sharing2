require 'test_helper'

class AddcommentsControllerTest < ActionController::TestCase
  setup do
    @addcomment = addcomments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addcomments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addcomment" do
    assert_difference('Addcomment.count') do
      post :create, addcomment: { content: @addcomment.content }
    end

    assert_redirected_to addcomment_path(assigns(:addcomment))
  end

  test "should show addcomment" do
    get :show, id: @addcomment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addcomment
    assert_response :success
  end

  test "should update addcomment" do
    put :update, id: @addcomment, addcomment: { content: @addcomment.content }
    assert_redirected_to addcomment_path(assigns(:addcomment))
  end

  test "should destroy addcomment" do
    assert_difference('Addcomment.count', -1) do
      delete :destroy, id: @addcomment
    end

    assert_redirected_to addcomments_path
  end
end
