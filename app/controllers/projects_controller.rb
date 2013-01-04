class ProjectsController < ApplicationController

  def index
    @projects = Project.all
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
    else
      flash[:alert] = "Projeto nao foi criado."
      render action: 'new'
    end
  end
  
  def edit
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = "Projeto foi editado com sucesso."
      redirect_to @project
    else
      flash[:alert] = "Projeto nao foi editado."
      render action: 'edit'
    end
  end
  
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Projeto removido."
    redirect_to projects_path
  end

end
