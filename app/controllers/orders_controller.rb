class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    @orders.each(&:calculate_totals)
    render :index
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    @order.calculate_totals if @order
    render :show
  end

  def create
    carted_products = current_user.carted_products.where(status: "carted")

    @order = Order.new(user_id: current_user.id)
    @order.calculate_totals

    if @order.save
      carted_products.update_all(status: "purchased", order_id: @order.id)
      render :show
    else
      render json: { errors: @order.errors.full_messages }, status: 422
    end
  end
end
