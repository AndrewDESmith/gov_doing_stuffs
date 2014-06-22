class ProjectsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @categories = @user.categories.all.inject([]){|arr, cat|
      arr << [cat[:name], cat[:id]]
    }
    p @categories
    @project = Project.new
  end

  def create
    p params
    if Project.create(project_params)
      redirect_to projects_url
    else
      render :new
    end
  end

  def index
      @projects = Project.all
      p @projects
  end

  def show
      p params
      @project = Project.find(params[:id])
      p @project
      p @project.category
      @requests = @project.requests.all
      p @requests
  end

  private

  def project_params
      params.require(:project).permit(:name, :description, :twitter_message, :facebook_message, :email_message, :category_id, :allow_photo_in_request)
  end

end
