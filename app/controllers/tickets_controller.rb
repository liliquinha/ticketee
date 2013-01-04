class TicketsController < ApplicationController
  
  before_filter :find_project
  before_filter :find_ticket, only: [:show, :edit, :update, :destroy]
  
  def new # com cucumber gera o método e ja coloca o codigo settando as variaveis de instancia
    @ticket = @project.tickets.build
  end
  
  def create
    @ticket = @project.tickets.build(params[:ticket])
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
  
  private
  def find_project
      @project = Project.find(params[:project_id])
  end
  
  def find_ticket
    @ticket = @project.tickets.find(params[:id])
  end
end
