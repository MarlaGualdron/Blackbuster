class User < ApplicationRecord
    validates :name, :last_name, :email, :password, :password_confirmation, presence: true
end
