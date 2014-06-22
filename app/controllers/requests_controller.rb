class RequestsController < ApplicationController
  def new
   # @request = Request.new
   @project = Project.find(params[:project_id])
   p @project

  end

  def create
    @project = Project.find(params[:project_id])
    @request = @project.requests.create(request_params)
    p @request
    redirect_to request_path(@request)

  end

  def show
    @request = Request.find(params[:id])
    @projects_latest = Project.last(5)
    p @projects_latest
  end

  private
  def request_params
      params.require(:request).permit(:citizen_name,:email,:twitter_handler,:facebook_handler,:phone,:comment)
  end
end
