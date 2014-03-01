class Space < ActiveRecord::Base
  has_one :location
  has_one :amenity
end
