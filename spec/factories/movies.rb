# frozen_string_literal: true

FactoryBot.define do
  factory :movie do
    title { Faker::Movie.title }
    genre { Faker::Book.genre }
    description { Faker::Movie.quote }
    quantity { Faker::Number.number(digits: 2) }
    release { Faker::Date.between(from: '1990-09-23', to: '2022-09-25') }
    rent_price { Faker::Number.number(digits: 1) }
    available {Faker::Boolean.boolean}
  end
end
