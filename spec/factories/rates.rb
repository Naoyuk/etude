# frozen_string_literal: true

FactoryBot.define do
  factory :rate do
    usd { 1.00 }
    cad { 1.30 }
    jpy { 150.00 }
    eur { 0.90 }
  end
end
