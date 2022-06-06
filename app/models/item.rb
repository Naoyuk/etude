# frozen_string_literal: true

class Item < ApplicationRecord
  # Association
  belongs_to :category
  has_many :list_items

  # Validations
  validates :name, presence: true
  validates :price, presence: true
end
