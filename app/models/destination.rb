class Destination < ApplicationRecord
    has_many :user_destinations
    has_many :users, through: :user_destinations
    has_many :comments
    has_many :pictures
    has_many :months
end
