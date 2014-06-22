class RequestsController < ApplicationController
  def new
   # @request = Request.new
   @project = Project.find(params[:project_id])
   p @project
   @location = Location.new
  end

  def create
    @project = Project.find(params[:project_id])
    @request = @project.requests.create(request_params)
    #@location = @request.location.build(latitude: params[:request][:latitude], longitude: params[:request][:longitude], address: params[:request][:address])
    @location = Location.create(latitude: params[:request][:latitude], longitude: params[:request][:longitude], address: params[:request][:address], request_id: @request.id)

    @request.location = @location

    p @request
    p @request.location
    redirect_to request_path(@request)

  end

  def show
    @request = Request.find(params[:id])
    @projects_latest = Project.last(5)
    p @projects_latest
  end

  private
  def request_params
      params.require(:request).permit(:citizen_name,:email,:twitter_handler,:facebook_handler,:phone,:comment,:latitude, :longitude, :address)
  end
end
