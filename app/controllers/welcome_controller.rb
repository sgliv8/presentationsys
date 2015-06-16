class WelcomeController < ApplicationController
  def index
  end

  def search
  end

  def display
  	@reportComments = Comment.where(group: params[:group], project: params[:project])
  	@reportGrades = Grade.where(group: params[:group], project: params[:project])

  	respond_to do |format|
      format.json { 
      	render :json => {
      		:comments => @reportComments,
      		:grades => @reportGrades
      	}
      }
    end
  end
end
