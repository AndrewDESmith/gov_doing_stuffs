class PagesController < ApplicationController
  def index
    p params
    @projects = Project.all
    p @projects
  end
end
