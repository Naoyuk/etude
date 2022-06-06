# frozen_string_literal: true

FactoryBot.define do
  factory :order do
    order_date { Date.today }
    association :customer
  end
end
