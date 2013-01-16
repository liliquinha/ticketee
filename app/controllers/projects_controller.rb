class ProjectsController < ApplicationController

  before_filter :find_project, only: [:show, :edit, :update, :destroy]
  before_filter :authorize_admin!, :except => [:index, :show]
  
  def index
    @projects = Project.all
  end
  
  def show
    
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
   
  end
  
  def update

    if @project.update_attributes(params[:project])
      flash[:notice] = "Projeto foi editado com sucesso."
      redirect_to @project
    else
      flash[:alert] = "Projeto nao foi editado."
      render action: 'edit'
    end
  end
  
  def destroy

    @project.destroy
    flash[:notice] = "Projeto removido."
    redirect_to projects_path
  end
  
  private
    def find_project
      @project = Project.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "Esta pagina nao existe"
      redirect_to projects_path
    end
      
    

end
