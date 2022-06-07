# frozen_string_literal: true

class OrdersController < ApplicationController
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

  def show
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to order_path(@order)
    else
      render 'edit'
    end
  end

  def destroy
    @order = Order.find(params[:id])
    if @order.destroy
      redirect_to orders_path
    else
      render order_path(@order)
    end
  end

  private

  def order_params
    params.require(:order).permit(:order_date, :customer_id,
      list_items_attributes:[ :id, :item_id, :quantity, :_destroy])
  end
end
