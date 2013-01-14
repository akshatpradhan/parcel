class Garden
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :address, type: String
  field :neighborhood, type: String
end
