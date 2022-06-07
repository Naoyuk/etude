# frozen_string_literal: true

class Order < ApplicationRecord
  # Association
  belongs_to :customer
  has_many :list_items, inverse_of: :order
  accepts_nested_attributes_for :list_items, reject_if: :all_blank, allow_destroy: true

  # Validations
  validates :order_date, presence: true
  validates :customer_id, presence: true
end
