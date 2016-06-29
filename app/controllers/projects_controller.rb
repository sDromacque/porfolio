class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @projects = Project.all.page(params[:page])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new post_params

    if @project.save
      flash[:success] = 'Project enregistré.'
      redirect_to @project
    else
      flash[:danger] = 'Erreur dans le formulaire'
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @project.update post_params
      redirect_to @project, notice: 'Project update'
    else
      render action: 'edit'
    end
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def post_params
    params.require(:project).permit(:title, :description, :link)
  end
end
