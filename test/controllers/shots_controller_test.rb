require 'test_helper'

class ShotsControllerTest < ActionController::TestCase
  setup do
    @shot = shots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shots)
  end

  test "should create shot" do
    assert_difference('Shot.count') do
      post :create, shot: { comments_id: @shot.comments_id, description: @shot.description, project_id: @shot.project_id, source: @shot.source, title: @shot.title, user_id: @shot.user_id }
    end

    assert_response 201
  end

  test "should show shot" do
    get :show, id: @shot
    assert_response :success
  end

  test "should update shot" do
    put :update, id: @shot, shot: { comments_id: @shot.comments_id, description: @shot.description, project_id: @shot.project_id, source: @shot.source, title: @shot.title, user_id: @shot.user_id }
    assert_response 204
  end

  test "should destroy shot" do
    assert_difference('Shot.count', -1) do
      delete :destroy, id: @shot
    end

    assert_response 204
  end
end
