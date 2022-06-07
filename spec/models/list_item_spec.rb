# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ListItem, type: :model do
  let(:list_item) { FactoryBot.create(:list_item) }

  it 'has valid factory' do
    expect(list_item).to be_valid
  end

  it 'is invalid without order_id' do
    list_item.order_id = nil
    list_item.valid?
    expect(list_item.errors[:order_id]).to include("can't be blank")
  end

  it 'is invalid without item_id' do
    list_item.item_id = nil
    list_item.valid?
    expect(list_item.errors[:item_id]).to include("can't be blank")
  end

  it 'is invalid without quantity' do
    list_item.quantity = nil
    list_item.valid?
    expect(list_item.errors[:quantity]).to include("can't be blank")
  end
end
