class Beer < ApplicationRecord
  has_many :users, through: :user_beers
  has_many :user_beer
end
