require 'rails_helper'

RSpec.describe Customer, type: :model do
  let(:customer) { FactoryBot.create(:customer) }

  it 'has valid factory' do
    expect(customer).to be_valid
  end

  describe 'validations' do
    it 'is invalid without name' do
      customer.name = nil
      customer.valid?
      expect(customer.errors[:name]).to include("can't be blank")
    end

    it 'is invalid without address1' do
      customer.address1 = nil
      customer.valid?
      expect(customer.errors[:address1]).to include("can't be blank")
    end
  end
end
