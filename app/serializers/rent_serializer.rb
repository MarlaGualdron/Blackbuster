class RentSerializer < ActiveModel::Serializer
  attributes :id, :from, :to, :user_id, :movie_id, :returned

end
