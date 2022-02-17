class Api::OrdersController < Api::ApiController
  before_action :authorize_request
  before_action :set_user
  before_action :set_order, except: [:create, :index]

  # GET  /api/orders
  def index
    orders = Order.all
    render json: orders
  end

  # POST  /api/orders
  def create
    address = @user.addresses.create(address_params)
    order = @user.orders.new(order_params)
    order.address_id = address.id
    
    if order.save
      render json: order, status: :created
    else
      render json: { errors: order.errors.full_messages },
        status: :unprocessable_entity
    end
  end

  # PUT /api/orders/:id
  def update
    if @order.present? && @order.update(order_params)
      render json: @order, status: :ok
    else
      render json: { errors: @order.nil? ?  "Order Not Found" : @order.errors.full_messages },
        status: :unprocessable_entity
    end
  end

  # GET /api/orders/:id
  def show
    if @order.present?
      render json: @order, status: :ok
    else
      render json: { errors:  "Order Not Found"},
        status: :unprocessable_entity
    end
  end

  # DELETE /api/orders/:id
  def destroy
    if @order.present? && @order.destroy
      render json: @order, status: :ok
    else
      render json: { errors: @order.nil? ?  "Order Not Found" : @order.errors.full_messages },
      status: :unprocessable_entity
    end
  end

  private

  def set_order
    @order = Order.find_by(id: params[:id])
  end

  def set_user
    @user = User.find_by_id params[:user_id]
  end

  def order_params
    params.permit(:address_id, :user_id, :order_total)
  end

  def address_params
    params[:addresses].permit!
  end
end