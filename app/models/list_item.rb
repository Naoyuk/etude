# frozen_string_literal: true

class ListItem < ApplicationRecord
  belongs_to :order
  belongs_to :item
end
