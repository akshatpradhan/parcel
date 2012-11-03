class Garden
  include Mongoid::Document
  include Mongoid::Timestamps
  include Geocoder::Model::Mongoid

  field :title,       type: String
  field :description, type: String
  field :address,     type: String
  field :position,    type: Array
  field :coordinates, as: :position
  field :gmaps,       type: Boolean

  geocoded_by :address
  after_validation :geocode
end
