class UserBeersController < ApplicationController
  before_action :set_user_beer, only: [:show, :update, :destroy]

  # GET /user_beers
  def index
    @user_beers = UserBeer.all

    render json: @user_beers
  end

  # GET /user_beers/1
  def show
    render json: @user_beer
  end

  # POST /user_beers
  def create
    @user_beer = UserBeer.new(user_beer_params)

    if @user_beer.save
      render json: @user_beer, status: :created, location: @user_beer
    else
      render json: @user_beer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_beers/1
  def update
    if @user_beer.update(user_beer_params)
      render json: @user_beer
    else
      render json: @user_beer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_beers/1
  def destroy
    @user_beer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_beer
      @user_beer = UserBeer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_beer_params
      params.require(:user_beer).permit(:beer_id, :user_id)
    end
end
