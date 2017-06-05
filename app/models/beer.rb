class Beer < ApplicationRecord
  belongs_to :user
  validates :name, :price, :presence => true
end
