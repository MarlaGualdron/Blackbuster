class User < ApplicationRecord
    validates :name, :last_name, :mail, :password, :password_confirmation, presence: true
end
