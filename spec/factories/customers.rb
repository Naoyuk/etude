# frozen_string_literal: true

FactoryBot.define do
  factory :customer do
    sequence(:name) { |n| "tester#{n}" }
    sequence(:address1) { |n| "#{n} test#{n} Ave" }
  end
end
