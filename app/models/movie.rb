# frozen_string_literal: true

class Movie < ApplicationRecord
  validates :title, :gender, :quantity, :release, :description, :rent_price, presence: true
end
