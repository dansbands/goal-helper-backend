class User < ApplicationRecord
  has_many :goals
  has_many :links, through: :goals
end
