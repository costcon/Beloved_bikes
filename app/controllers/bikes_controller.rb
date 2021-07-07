class BikesController < ApplicationController
  before_action :authenticate_user!, except:[:index, :show]
  # before_action :check_login_user, {only: [:exhibit, :new, :create, :edit, :update, :destroy]}


  def index
    @bikes = Bike.all.page(params[:page]).per(8)
    # tweet一覧をPV数の多い順に並び替える。
    @rankings = Bike.order('impressions_count DESC').take(3)
    @q = Bike.ransack(params[:q])
    @bikes_search = @q.result(distinct: true)
  end

  def show
    @bike = Bike.find(params[:id])
    @reservation = Reservation.new
    @reservations = Reservation.where(bike_id: @bike)
    @user = @bike.user_id
    # ip_addressを識別して同一ユーザーのPVカウントを抑止、その後再度データを反映
    impressionist(@bike, nil, unique: [:ip_address])
    @bike = Bike.find(params[:id])

    @reviews = Review.where(reviewed_id: @user)
    @lat = @bike.spot.latitude
    @lng = @bike.spot.longitude
    gon.lat = @lat
    gon.lng = @lng
    if @reviews.blank?
      @average_review = 0
    else
      @average_review = @reviews.average(:evaluation).round(1)
    end

  end

  def exhibit
    # @bikes = current_user.bikes
    @bikes = Bike.where(user_id: current_user.id)

  end

  def new
    @bike = Bike.new
    @bike.build_spot
    gon.lat = 35.6594666
    gon.lng = 139.7005536
  end

  def create
    @bike = Bike.new(bike_params)
    # @bike.score = Language.get_data(@bike.introduction)
    if @bike.save
      # tags = Vision.get_image_data(@bike.bike_image)
      # tags.each do |tag|
      #   @bike.tags.create(name: tag)
      # end
      redirect_to exhibit_bike_path(current_user), success: "作成しました"
    else
      flash.now[:danger] = '作成に失敗しました。'
      render :new
    end
  end

  def edit
    @bike = Bike.find(params[:id])
    if @bike.spot.blank?
      @bike.build_spot
    end
    @lat = @bike.spot.latitude
    @lng = @bike.spot.longitude
    gon.lat = @lat
    gon.lng = @lng
  end

  def update
    @bike = Bike.find(params[:id])
    @bike.score = Language.get_data(@bike.introduction)
    if @bike.update(bike_params)
      # tags = Vision.get_image_data(@bike.bike_image)
      # tags.each do |tag|
      #   @bike.tags.create(name: tag)
      # end
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

  def search
    @q = Bike.search(search_params)
    # @q = Bike.ransack(params[:q]) #ransackの検索処理
    @bikes = @q.result(distinct: true).page(params[:page]).per(8)
    pp @bikes
  end

  private

  def bike_params
    params.require(:bike).permit(
      :user_id,
      :vehicle_inspection,
      :bike_image,
      :name,
      :maker,
      :displacement,
      :mileage,
      :modek_year,
      :introduction,
      :price,
      :is_active,
      :area,
      :cancel_fee_otd,
      :cancel_fee24,
      :cancel_fee72,
      :at_mt,
      spot_attributes: [:id, :bike_id, :address, :latitude, :longitude])
  end

  def search_params
    params.require(:q).permit(:name_or_area_cont, :price_gteq, :price_lteq, :at_mt_eq, :area_eq)
  end


end
