# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { FactoryBot.create(:category) }

  it 'has valid factory' do
    expect(category).to be_valid
  end

  describe 'validations' do
    it 'is invalid without name' do
      category.name = nil
      category.valid?
      expect(category.errors[:name]).to include("can't be blank")
    end
  end
end
