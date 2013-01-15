class TicketsController < ApplicationController
  
  before_filter :authenticate_user!, except: [:index, :show]
  before_filter :find_project
  before_filter :find_ticket, only: [:show, :edit, :update, :destroy]
  
  def new # com cucumber gera o método e ja coloca o codigo settando as variaveis de instancia
    @ticket = @project.tickets.build
  end
  
  def create
    @ticket = @project.tickets.build(params[:ticket].merge!(user: current_user))
    if @ticket.save
      flash[:notice] = "Ticket foi criado."
      redirect_to [@project, @ticket]
    else
      flash[:alert] = "Ticket nao foi criado."
      render action: 'new'
    end
  end
  
  def show
    
  end
  
  def edit
    
  end
  
  def update
    if @ticket.update_attributes(params[:ticket])
      flash[:notice] = "Ticket foi editado com sucesso"
      redirect_to [@project, @ticket]
    else
      flash[:alert] = "Ticket nao foi editado."
      render action: 'edit'
    end
  end
  
  def destroy
    @ticket.destroy
    flash[:notice] = "Ticket foi removido"
    redirect_to @project
  end
  
  private
  def find_project
      @project = Project.find(params[:project_id])
  end
  
  def find_ticket
    @ticket = @project.tickets.find(params[:id])
  end
end
