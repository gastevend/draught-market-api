class UserBeerSerializer < ActiveModel::Serializer
  attributes :id
  has_one :beer
  has_one :user
end
