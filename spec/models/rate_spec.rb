require 'rails_helper'

RSpec.describe Rate, type: :model do
  let(:rate) { FactoryBot.create(:rate) }

  it 'has valid factory' do
    expect(rate).to be_valid
  end
end
