class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.where(user_id: current_user)
    @grades = Grade.where(user_id: current_user)

    if(current_user.role.name == "Admin")
      @comments = Comment.all
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = current_user.comments.build

    @inquestions1 = Course.first

  end

  # GET /comments/1/edit
  def edit
    # @course_id = @comment.select("comments.course_id")
    # @inquestions1 = Course.where(id: @course_id)
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = current_user.comments.build(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def questiondisplay
    @questions = Course.where(id: comment_params[:course_id]);

    respond_to do |format|
      format.json { 
        render :json => {
          :questions => @questions,
        }
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
      @course_id = @comment.course_id
      @inquestions1 = Course.where(id: @course_id)
      #@course_id = @comment.select("comments.course_id")
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:group, :project, :strength, :weakness, :improvement, :fund, :user_id, :course_id)
    end
end
