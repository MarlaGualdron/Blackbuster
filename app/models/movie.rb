# frozen_string_literal: true

class Movie < ApplicationRecord
  validates :title, :genre, :quantity, :release, :description, :rent_price, presence: true
end
