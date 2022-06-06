class Category < ApplicationRecord
  # Association
  has_many :items

  # Validations
  validates :name, presence: true
end
