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
    @bike = Reservation.find_by(params[:bike_id])
    @user = Reservation.find_by(params[:reserved_id])
  end

  def requests
    @reservations = Reservation.where(reserved_id: current_user.id)
    @bike = Reservation.find_by(params[:bike_id])
    @user = Reservation.find_by(params[:reserved_id])
  end


  def show
    @reservation = Reservation.find(params[:id])
    @bike = Bike.find(@reservation.bike_id)
    @user = User.find(@reservation.reserved_id)
  end

  def chat_show
    @reservation = Reservation.find(params[:id])
    @owner = User.find(@reservation.reserved_id)
    
    @user = User.find(params[:id])
    rooms = current_user.user_rooms.pluck(:room_id)
    user_rooms = UserRoom.find_by(user_id: @user.id, room_id: rooms)
    unless user_rooms.nil?
      @room = user_rooms.room
    else
      @room = Room.new
      @room.save
      UserRoom.create(user_id: current_user.id, room_id: @room.id)
      UserRoom.create(user_id: @user.id, room_id: @room.id)
    end
    @chats = @room.chats
    @chat = Chat.new(room_id: @room.id)
  end

  def chat_create
    @chat = current_user.chats.new(chat_params)
    @chat.save
    redirect_to request.referer
  end

  def thanks
  end


  private

  def reservation_params
    params.require(:reservation).permit(:start_time, :end_time, :bike_id, :reserver_id, :reserved_id, :reservation_name, :reservation_comment)
  end

  def chat_params
    params.require(:chat).permit(:message, :room_id)
  end

end
