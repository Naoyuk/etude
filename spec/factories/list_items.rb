# frozen_string_literal: true

FactoryBot.define do
  factory :list_item do
    quantity { 1 }
    association :order
    association :item
  end
end
