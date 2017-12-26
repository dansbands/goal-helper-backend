class LinkSerializer < ActiveModel::Serializer
  attributes :id, :title, :url

  belongs_to :goal
end
