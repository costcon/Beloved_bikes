class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def confirm
  end

  def create
    Reservation.create(reservation_params)
    redirect_to thanks_reservations_path
  end

  def index
  end

  def show
  end

  def thanks
  end


  private

  def reservation_params
    params.require(:reservation).permit(:date_time, :reserver_id, :reserved_id, :reservation_name)
  end

end
