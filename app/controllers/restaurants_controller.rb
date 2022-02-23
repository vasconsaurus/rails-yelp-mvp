class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

      # Only allow a list of trusted parameters through.
      def restaurant_params
        params.require(:restaurant).permit(:name, :address, :phone_number, :category)
      end
end
