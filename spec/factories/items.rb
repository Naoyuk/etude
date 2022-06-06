# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    sequence(:name) { |n| "item#{n}" }
    sequence(:price) { |n| n * 10.00 }
    association :category
  end
end
