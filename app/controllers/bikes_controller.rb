class BikesController < ApplicationController
  before_action :authenticate_user!


  def index
    # @bikes = @bike.page(params[:page]).per(8)
    @bikes = Bike.all.page(params[:page]).per(8)
  end

  def show
    @bike = Bike.find(params[:id])
    @reservation = Reservation.new
    @reservations = Reservation.all
  end

  def exhibit
    @bikes = Bike.where(user_id: current_user.id)
    # @bike = Bike.find(params[:id])
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      redirect_to exhibit_bike_path(current_user), success: "作成しました"
    else
      flash.now[:danger] = '作成に失敗しました。'
      render :new
    end
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def update
    @bike = Bike.find(params[:id])
    if @bike.update(bike_params)
      redirect_to exhibit_bike_path(current_user), success: "更新しました"
    else
      flash.now[:danger] = '作成に失敗しました。'
      render :edit
    end
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bikes = current_user.bikes
    @bike.destroy
    redirect_to exhibit_bike_path(current_user)
  end

  def map
    # respond_to以下の記述によって、
    # remote: trueのアクセスに対して、
    # map.js.erbが変えるようになります。
    respond_to do |format|
      format.js
    end
  end


  private

  def bike_params
    params.require(:bike).permit(:user_id, {bike_images: []}, :name, :maker, :displacement, :mileage, :modek_year, :introduction, :price, :is_active)
  end

end
