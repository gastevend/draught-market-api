# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :beer, through: :user_beer
  has_many :user_beer
end
