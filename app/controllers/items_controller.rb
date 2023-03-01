# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = Item.all.order(:id)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to items_path
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to items_path
    else
      render items_path
    end
  end

  def import
    Item.import(params[:file])
    redirect_to items_url
  end

  private

  def item_params
    params.require(:item).permit(
      :title,
      :price,
      :category_id,
      :item_code,
      :upc,
      :brand,
      :size,
      :pack,
      :z_price,
      :stock,
      :depertment,
      :availability_status,
      :case_upc,
      :asin,
      :ean_upc,
      :model_number,
      :description,
      :replenishment_status,
      :effective_date,
      :current_cost,
      :cost,
      :current_cost_currency,
      :cost_currency
    )
  end
end
