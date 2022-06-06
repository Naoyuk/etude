class Customer < ApplicationRecord
  # Association
  has_many :orders

  # Validations
  validates :name, presence: true
  validates :address1, presence: true
end
