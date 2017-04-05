require 'test_helper'

class VideolinksControllerTest < ActionController::TestCase
  setup do
    @videolink = videolinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:videolinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create videolink" do
    assert_difference('Videolink.count') do
      post :create, videolink: { User_id: @videolink.User_id, link: @videolink.link }
    end

    assert_redirected_to videolink_path(assigns(:videolink))
  end

  test "should show videolink" do
    get :show, id: @videolink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @videolink
    assert_response :success
  end

  test "should update videolink" do
    patch :update, id: @videolink, videolink: { User_id: @videolink.User_id, link: @videolink.link }
    assert_redirected_to videolink_path(assigns(:videolink))
  end

  test "should destroy videolink" do
    assert_difference('Videolink.count', -1) do
      delete :destroy, id: @videolink
    end

    assert_redirected_to videolinks_path
  end
end
