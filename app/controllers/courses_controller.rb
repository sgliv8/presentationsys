class CoursesController < ApplicationController
  #before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  load_and_authorize_resource

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_course
    #   @course = Course.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:course_name, :cq1, :cq2, :cq3, :cq4, :cq5, :cq6, :cq7, :cq8, :cq9, :cq10, :gq1, :gq2, :gq3, :gq4, :gq5, :gq6, :gq7, :gq8, :gq9, :gq10, :gq11, :gq12, :gq13, :gq14, :gq15, :gq16, :gq17, :gq18, :gq19, :gq20, :gw1, :gw2, :gw3, :gw4, :gw5, :gw6, :gw7, :gw8, :gw9, :gw10, :gw11, :gw12, :gw13, :gw14, :gw15, :gw16, :gw17, :gw18, :gw19, :gw20)
    end
end
