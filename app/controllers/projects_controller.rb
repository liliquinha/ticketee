class ProjectsController < ApplicationController

  def index
    
  end
  
  def show
    @project = Project.find(params[:id])
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    
    if @project.save
      flash[:notice] = "Projeto foi criado!"
      redirect_to @project
    end
  end

end
