require 'test_helper'

class CasesControllerTest < ActionController::TestCase
  setup do
    @case = cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create case" do
    assert_difference('Case.count') do
      post :create, case: { acts: @case.acts, additional_details: @case.additional_details, case_running_since: @case.case_running_since, case_taken_as: @case.case_taken_as, case_title: @case.case_title, case_type: @case.case_type, colony_or_village: @case.colony_or_village, district: @case.district, police_station: @case.police_station, tehsil: @case.tehsil }
    end

    assert_redirected_to case_path(assigns(:case))
  end

  test "should show case" do
    get :show, id: @case
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @case
    assert_response :success
  end

  test "should update case" do
    put :update, id: @case, case: { acts: @case.acts, additional_details: @case.additional_details, case_running_since: @case.case_running_since, case_taken_as: @case.case_taken_as, case_title: @case.case_title, case_type: @case.case_type, colony_or_village: @case.colony_or_village, district: @case.district, police_station: @case.police_station, tehsil: @case.tehsil }
    assert_redirected_to case_path(assigns(:case))
  end

  test "should destroy case" do
    assert_difference('Case.count', -1) do
      delete :destroy, id: @case
    end

    assert_redirected_to cases_path
  end
end
