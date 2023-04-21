# frozen_string_literal: true

class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :genre, :release, :quantity, :rent_price
end
