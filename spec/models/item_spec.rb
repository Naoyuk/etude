# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { FactoryBot.create(:item) }

  it 'has valid factory' do
    expect(item).to be_valid
  end

  describe 'validations' do
    it 'is invalid without name' do
      item.title = nil
      item.valid?
      expect(item.errors[:title]).to include("can't be blank")
    end

    it 'is invalid without price' do
      item.price = nil
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end
  end
end
