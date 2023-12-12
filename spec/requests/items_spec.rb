# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Items', type: :request do
  let(:item) { FactoryBot.create(:item) }

  describe 'GET /index' do
    it 'returns a 200 response' do
      get items_path
      expect(response).to have_http_status '200'
    end
  end

  describe 'GET /new' do
    it 'returns a 200 response' do
      get new_item_path
      expect(response).to have_http_status '200'
    end
  end

  describe 'POST /create' do
    it 'creates a new item' do
      expect do
        post items_path, params: { item: {
          title: 'newtester',
          price: 10.00
        } }
      end.to change(Item, :count).by(1)
      expect(response).to redirect_to(items_path)
    end
  end

  describe 'PATCH /update' do
    it 'updates an item' do
      patch item_path(item), params: { item: { title: 'updated' } }
      item.reload
      expect(item.title).to eq 'updated'

      patch item_path(item), params: { item: { price: 15.00 } }
      item.reload
      expect(item.price).to eq 15.00
    end
  end

  describe 'DELETE /destroy' do
    item = FactoryBot.create(:item)
    it 'destroy an item' do
      expect do
        delete item_path(item)
      end.to change(Item, :count).by(-1)
    end
  end
end
