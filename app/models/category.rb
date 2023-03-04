# frozen_string_literal: true

class Category < ApplicationRecord
  # Association

  # Validations
  validates :name, presence: true
end
