class UserSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :goals
  has_many :links
  # , through: :goals
end
