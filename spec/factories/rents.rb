# FactoryBot.define do
#   factory :rent do
#     from { Faker::Date.backward(days: 1) }
#     to { Faker::Date.forward(days: 3) }
#     rent_debt { nil }
#     user { association :user }
#     movie { association(:movie) }
#     returned { false }
#   end
# end
