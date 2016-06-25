class ProjectsController < ApplicationController

  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new post_params

    if @project.save
      redirect_to @project, notice: 'Save'
    else
      render 'new', notice: 'Fail'
    end
  end

  def show

  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def post_params
    params.require(:project).permit(:title, :description, :link)
  end
end
