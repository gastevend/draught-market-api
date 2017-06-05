class BeerSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  has_one :user
end
