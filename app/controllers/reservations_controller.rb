class ReservationsController < ApplicationController
  before_action :authenticate_user!

  # NEW必要ない
  def new
    @reservation = Reservation.new
  end

  def confirm
    @reservation = Reservation.new(reservation_params)
    @bike = Bike.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
    redirect_to thanks_reservations_path
  end


  def index
    @reservations = Reservation.where(reserver_id: current_user.id)
    @bike = Bike.find(params[@reservation.bike_id])
    @user = User.find(params[@reservation.reserved_id])
  end

  def show
    @reservation = Reservation.find(params[:id])
    @bike = Bike.find(params[@reservation.bike_id])
    @user = User.find(params[@reservation.reserved_id])
  end

  def thanks
  end


  private

  def reservation_params
    params.require(:reservation).permit(:start_time, :end_time, :bike_id, :reserver_id, :reserved_id, :reservation_name, :reservation_comment)
  end

end
