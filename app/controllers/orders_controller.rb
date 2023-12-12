# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :set_order, only: %w(show edit update destroy)

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @list_item = @order.list_items.build
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to orders_path
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    if @order.update(order_params)
      redirect_to order_path(@order)
    else
      render 'edit'
    end
  end

  def destroy
    if @order.destroy
      redirect_to orders_path
    else
      render order_path(@order)
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:order_date, :customer_id,
      list_items_attributes:[ :id, :item_id, :quantity, :_destroy])
  end
end
