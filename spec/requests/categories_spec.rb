# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  let(:category) { FactoryBot.create(:category) }

  describe 'GET /index' do
    it 'returns a 200 response' do
      get categories_path
      expect(response).to have_http_status '200'
    end
  end

  describe 'GET /new' do
    it 'returns a 200 response' do
      get new_category_path
      expect(response).to have_http_status '200'
    end
  end

  describe 'POST /create' do
    it 'creates a new category' do
      expect do
        post categories_path, params: { category: { name: 'new category' } }
      end.to change(Category, :count).by(1)
      expect(response).to redirect_to(categories_path)
    end
  end

  describe 'PATCH /update' do
    it 'updates a category' do
      patch category_path(category), params: { category: { name: 'updated' } }
      category.reload
      expect(category.name).to eq 'updated'
    end
  end

  describe 'DELETE /destroy' do
    category = FactoryBot.create(:category)
    it 'destroy a category' do
      expect do
        delete category_path(category)
      end.to change(Category, :count).by(-1)
    end
  end
end
