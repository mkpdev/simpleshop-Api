class Api::ItemsController < Api::ApiController

  before_action :authorize_request

  #GET /api/items
  def index
    items = Item.all
    render json: items
  end

  # POST /api/items
  def create
    item = Item.create(item_params)
    if item.save
      render json: item, status: :created
    else
      render json: { errors: item.errors.full_messages },
        status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:order_id, :product_id, :quantity)
  end

end
