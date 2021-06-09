class BikesController < ApplicationController
  def index
    @bikes = Bikes.all

  end

  def show
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
      redirect_to bike_edit_path(@bike.id), success: "作成しました"
    else
      flash.now[:danger] = '作成に失敗しました。'
      render :new
    end
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def update
  end

  def destroy
  end


  private

  def bike_params
    params.require(:bike).permit(:user_id, :bike_image, :name, :maker, :displacement, :mileage, :modek_year, :introduction, :price, :is_active)
  end

end
