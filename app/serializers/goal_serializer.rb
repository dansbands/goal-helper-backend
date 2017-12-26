class GoalSerializer < ActiveModel::Serializer
  attributes :id, :title, :notes

  has_many :links
  belongs_to :user
end
