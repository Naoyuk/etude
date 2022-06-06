# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Customers', type: :request do
  let(:customer) { FactoryBot.create(:customer) }

  describe 'GET /index' do
    it 'returns a 200 response' do
      get customers_path
      expect(response).to have_http_status '200'
    end
  end

  describe 'GET /new' do
    it 'returns a 200 response' do
      get new_customer_path
      expect(response).to have_http_status '200'
    end
  end

  describe 'POST /create' do
    it 'creates a new customer' do
      expect do
        post customers_path, params: { customer: {
          name: 'newtester',
          address1: '9999 Sample Rd'
        } }
      end.to change(Customer, :count).by(1)
      expect(response).to redirect_to(customers_path)
    end
  end

  describe 'PATCH /update' do
    it 'updates a customer' do
      patch customer_path(customer), params: { customer: { name: 'updated' } }
      customer.reload
      expect(customer.name).to eq 'updated'
    end
  end

  describe 'DELETE /destroy' do
    customer = FactoryBot.create(:customer)
    it 'destroy a customer' do
      expect do
        delete customer_path(customer)
      end.to change(Customer, :count).by(-1)
    end
  end
end
