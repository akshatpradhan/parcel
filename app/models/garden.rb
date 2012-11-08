class Garden
  include Mongoid::Document
  include Mongoid::Timestamps
  include Gmaps4rails::ActsAsGmappable

  acts_as_gmappable :address => :address, :position => :position

  field :title,       type: String
  field :description, type: String
  field :address,     type: String
  field :position,    type: Array
  field :gmaps,       type: Boolean

  belongs_to :user
end
