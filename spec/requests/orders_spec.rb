# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Orders', type: :request do
  let(:order) { FactoryBot.create(:order) }

  describe 'GET /index' do
    it 'returns a 200 response' do
      get orders_path
      expect(response).to have_http_status '200'
    end
  end

  describe 'GET /new' do
    it 'returns a 200 response' do
      get new_order_path
      expect(response).to have_http_status '200'
    end
  end

  describe 'POST /create' do
    it 'careates a new order' do
      customer = FactoryBot.create(:customer)
      expect do
        post orders_path, params: { order: {
          order_date: Date.today,
          customer_id: customer.id
        } }
      end
    end
  end

  describe 'GET /show' do
    it 'returns a 200 response' do
      get order_path(order)
      expect(response).to have_http_status '200'
    end
  end

  describe 'PATCH /update' do
    it 'update an order' do
      patch order_path(order), params: { order: { order_date: Date.yesterday } }
      order.reload
      expect(order.order_date).to eq Date.yesterday
    end
  end

  describe 'DELETE /destroy' do
    order = FactoryBot.create(:order)
    it 'destroy an order' do
      expect do
        delete order_path(order)
      end.to change(Order, :count).by(-1)
    end
  end
end
