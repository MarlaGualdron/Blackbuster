# frozen_string_literal: true

class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :gender, :release, :quantity, :rent_price
end
