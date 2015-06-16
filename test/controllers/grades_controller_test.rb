require 'test_helper'

class GradesControllerTest < ActionController::TestCase
  setup do
    @grade = grades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grade" do
    assert_difference('Grade.count') do
      post :create, grade: { cost: @grade.cost, cost_c: @grade.cost_c, fund: @grade.fund, fund_c: @grade.fund_c, group: @grade.group, obstacle: @grade.obstacle, obstacle_c: @grade.obstacle_c, opport: @grade.opport, opport_c: @grade.opport_c, point: @grade.point, point_c: @grade.point_c, project: @grade.project, risk: @grade.risk, risk_c: @grade.risk_c, timeline: @grade.timeline, timeline_c: @grade.timeline_c, user_id: @grade.user_id }
    end

    assert_redirected_to grade_path(assigns(:grade))
  end

  test "should show grade" do
    get :show, id: @grade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grade
    assert_response :success
  end

  test "should update grade" do
    patch :update, id: @grade, grade: { cost: @grade.cost, cost_c: @grade.cost_c, fund: @grade.fund, fund_c: @grade.fund_c, group: @grade.group, obstacle: @grade.obstacle, obstacle_c: @grade.obstacle_c, opport: @grade.opport, opport_c: @grade.opport_c, point: @grade.point, point_c: @grade.point_c, project: @grade.project, risk: @grade.risk, risk_c: @grade.risk_c, timeline: @grade.timeline, timeline_c: @grade.timeline_c, user_id: @grade.user_id }
    assert_redirected_to grade_path(assigns(:grade))
  end

  test "should destroy grade" do
    assert_difference('Grade.count', -1) do
      delete :destroy, id: @grade
    end

    assert_redirected_to grades_path
  end
end
