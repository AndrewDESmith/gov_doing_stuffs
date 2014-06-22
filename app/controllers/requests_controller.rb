class RequestsController < ApplicationController
  def new
   # @request = Request.new
   @project = Project.find(params[:project_id])
   p @project

  end
end
