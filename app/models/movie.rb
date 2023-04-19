class Movie < ApplicationRecord
    validates :title, :gender, :quantity, :release, presence: true
end
