module Admin
  class TicketsController < BaseController
    before_action :set_ticket, only: [:show, :edit, :update, :destroy]

    def index
      @tickets = Ticket.all
    end

    def show; end

    def new
      @ticket = Ticket.new
    end

    def create
      @ticket = Ticket.new(ticket_params)

      if @ticket.save
        redirect_to [:admin, @ticket]
      else
        render :new
      end
    end

    def edit; end

    def update
      if @ticket.update(ticket_params)
        redirect_to [:admin, @ticket], notice: 'Ticket was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @ticket.destroy
      redirect_to admin_tickets_url, notice: 'Ticket was successfully destroyed.'
    end

    private

    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    def ticket_params
      params.require(:ticket).permit(:train_id, :start_station_id, :end_station_id,
                                     :user_id, :user_fullname, :pasport_number)
    end
  end
end
