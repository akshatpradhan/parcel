class Garden
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title,        type: String
  field :description,  type: String
  field :address,      type: String
  field :neighborhood, type: String
end
