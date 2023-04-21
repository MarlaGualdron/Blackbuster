FactoryBot.define do
  factory :rent do
    from { "2023-04-21" }
    to { "2023-04-21" }
    rent_debt { 1.5 }
    User { nil }
    Movie { nil }
  end
end
