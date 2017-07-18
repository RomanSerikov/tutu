class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :destroy]

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = current_user.tickets.new
  end

  def create
    @ticket = current_user.tickets.new(ticket_params)

    if @ticket.save
      redirect_to @ticket, notice: 'Ticket was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_url, notice: 'Ticket was successfully destroyed.'
  end

  private
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    def ticket_params
      params.require(:ticket).permit(:train_id, :start_station_id, :end_station_id,
                                     :user_fullname, :pasport_number)
    end
end
