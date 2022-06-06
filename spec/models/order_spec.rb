# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:order) { FactoryBot.create(:order) }

  it 'has valid factory' do
    expect(order).to be_valid
  end

  it 'is invalid without order_date' do
    order.order_date = nil
    order.valid?
    expect(order.errors[:order_date]).to include("can't be blank")
  end

  it 'is invalid without customer_id' do
    order.customer_id = nil
    order.valid?
    expect(order.errors[:customer_id]).to include("can't be blank")
  end
end
