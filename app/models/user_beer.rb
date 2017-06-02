class UserBeer < ApplicationRecord
  belongs_to :beer, inverse_of: :user_beer
  belongs_to :user, inverse_of: :user_beer
end
