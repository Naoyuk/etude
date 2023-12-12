# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    sequence(:title) { |n| "item#{n}" }
    sequence(:price) { |n| n * 10.00 }
  end
end
