require 'test_helper'

class SegmentTypesControllerTest < ActionController::TestCase
  setup do
    @segment_type = segment_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:segment_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create segment_type" do
    assert_difference('SegmentType.count') do
      post :create, segment_type: { description: @segment_type.description, type_name: @segment_type.type_name }
    end

    assert_redirected_to segment_type_path(assigns(:segment_type))
  end

  test "should show segment_type" do
    get :show, id: @segment_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @segment_type
    assert_response :success
  end

  test "should update segment_type" do
    put :update, id: @segment_type, segment_type: { description: @segment_type.description, type_name: @segment_type.type_name }
    assert_redirected_to segment_type_path(assigns(:segment_type))
  end

  test "should destroy segment_type" do
    assert_difference('SegmentType.count', -1) do
      delete :destroy, id: @segment_type
    end

    assert_redirected_to segment_types_path
  end
end
