class GoalSerializer < ActiveModel::Serializer
  attributes :id, :title, :notes

  belongs_to :user
  has_many :links
end
