# frozen_string_literal: true

class ListItem < ApplicationRecord
  # Association
  belongs_to :order
  belongs_to :item

  # Validations
  validates :order_id, presence: true
  validates :item_id, presence: true
  validates :quantity, presence: true
end
