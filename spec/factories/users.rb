FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    last_name { Faker::Name.last_name  }
    mail { Faker::Internet.email }
    password { Faker::Internet.password }
    password_confirmation { password }
  end
end
