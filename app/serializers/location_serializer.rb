class LocationSerializer < ActiveModel::Serializer
  attributes :id, :space_id, :address, :longitude, :latitude
end
