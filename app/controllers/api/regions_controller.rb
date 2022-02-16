class Api::RegionsController < Api::ApiController
  before_action :authorize_request
  before_action :set_region, except: [:create, :index]

  #GET  /api/regions
  def index
    regions = Region.all
    render json: regions
  end

  # POST  /api/regions
  def create
    region = Region.create(region_params)
    if region.save
      render json: region, status: :created
    else
      render json: { errors: region.errors.full_messages },
      status: :unprocessable_entity
    end
  end

  # PATCH  /api/regions/:id
  def update
    if @region.present? && @region.update(region_params)
      render json: @region, status: :ok
    else
      render json: { errors: @region.nil? ?  "Regions Not Found" : @region.errors.full_messages },
      status: :unprocessable_entity
    end
  end

  # DELETE /api/regions/:id
  def destroy
    if @region.present? && @region.destroy
      render json: @region, status: :ok
    else
      render json: { errors: @region.nil? ?  "Regions Not Found" : @region.errors.full_messages },
      status: :unprocessable_entity
    end
  end

  private

  def set_region
    @region = Region.find_by_id(params[:id])
  end

  def region_params
    params.require(:region).permit(:title, :country, :currency, :tax)
  end
end
