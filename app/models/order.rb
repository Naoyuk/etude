# frozen_string_literal: true

class Order < ApplicationRecord
  # Association
  belongs_to :customer
  has_many :list_items

  # Validations
  validates :order_date, presence: true
  validates :customer_id, presence: true
end
