class BeersController < ProtectedController
  before_action :set_beer, only: [:update, :destroy]

  # GET /beers
  def index
    @beers = current_user.beer.sort_by(&:created_at)

    render json: @beers
  end

  # POST /beers
  def create
    @beer = current_user.beer.build(beer_params)

    if @beer.save
      render json: @beer, status: :created, location: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beers/1
  def update
    if @beer.update(beer_params)
      render json: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beers/1
  def destroy
    @beer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer
      @beer = current_user.beer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def beer_params
      params.require(:beer).permit(:user_id, :name, :price)
    end
end
