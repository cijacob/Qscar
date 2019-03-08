class ProjectsController < ApplicationController
  def index
    @projects = Project.includes(:technos).all 
  end
end
