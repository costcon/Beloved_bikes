class ReservesController < ApplicationController
  def new
    @reserve = Reserve.new
  end

  def confirm
  end

  def create
    Reserve.create(reserve_params)
    redirect_to user_path(current_user)
  end

  def index
  end

  def show
  end

  def thanks
  end


  private

  def reserve_params
    params.require(:reserve).permit(:date_time, :user_id, :reserve_name)
  end

end
