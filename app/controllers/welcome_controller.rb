class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def search
  	respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "report1",  # Excluding ".pdf" extension.
        		# :wkhtmltopdf => '/usr/local/bin/wkhtmltopdf', 
        	   :template => 'welcome/search.pdf.erb',
        	   :disposition => "inline",
               :layout => 'pdf.html.erb'
      end
    end
  end

  def display
  	@reportComments = Comment.where(group: params[:group], project: params[:project])
  	@reportGrades = Grade.where(group: params[:group], project: params[:project])

  	respond_to do |format|
  	  format.html
  	  format.pdf do
        render :pdf => "report",   # Excluding ".pdf" extension.
               :template => 'welcome/display.pdf.erb',
               :disposition => "inline",
               :layout => 'pdf.html.erb',
               locals: { reportComments: @reportComments, reportGrades: @reportGrades }
      	end

      format.json { 
      	render :json => {
      		:comments => @reportComments,
      		:grades => @reportGrades
      	}
      }
      end
    end
  end
