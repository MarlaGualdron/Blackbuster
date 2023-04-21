# frozen_string_literal: true

class Movie < ApplicationRecord
  has_one_attached :image
  has_and_belongs_to_many :rent
  validates :title, :genre, :quantity, :release, :description, :rent_price, presence: true
end
