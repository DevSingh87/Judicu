require 'test_helper'

class SegmentNamesControllerTest < ActionController::TestCase
  setup do
    @segment_name = segment_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:segment_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create segment_name" do
    assert_difference('SegmentName.count') do
      post :create, segment_name: { name: @segment_name.name }
    end

    assert_redirected_to segment_name_path(assigns(:segment_name))
  end

  test "should show segment_name" do
    get :show, id: @segment_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @segment_name
    assert_response :success
  end

  test "should update segment_name" do
    put :update, id: @segment_name, segment_name: { name: @segment_name.name }
    assert_redirected_to segment_name_path(assigns(:segment_name))
  end

  test "should destroy segment_name" do
    assert_difference('SegmentName.count', -1) do
      delete :destroy, id: @segment_name
    end

    assert_redirected_to segment_names_path
  end
end
