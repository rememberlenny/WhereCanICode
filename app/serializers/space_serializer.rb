class SpaceSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :published_at, :intro, :extended
end
