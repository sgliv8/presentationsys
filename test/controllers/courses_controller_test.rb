require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { course_name: @course.course_name, cq1: @course.cq1, cq2: @course.cq2, cq3: @course.cq3, cq4: @course.cq4, gq1: @course.gq1, gq2: @course.gq2, gq3: @course.gq3, gq4: @course.gq4, gq5: @course.gq5, gq6: @course.gq6, gq7: @course.gq7 }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    patch :update, id: @course, course: { course_name: @course.course_name, cq1: @course.cq1, cq2: @course.cq2, cq3: @course.cq3, cq4: @course.cq4, gq1: @course.gq1, gq2: @course.gq2, gq3: @course.gq3, gq4: @course.gq4, gq5: @course.gq5, gq6: @course.gq6, gq7: @course.gq7 }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
