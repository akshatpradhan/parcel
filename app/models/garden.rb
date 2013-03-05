class Garden
  include Mongoid::Document
  include Mongoid::Timestamps
  include Gmaps4rails::ActsAsGmappable

  before_validation(:on => :update) do
    self.gmaps = !address_changed?
    true
  end

  acts_as_gmappable :address => :address, :position => :position, :callback => :save_neighborhood

  field :title,        type: String
  field :description,  type: String
  field :address,      type: String
  field :neighborhood, type: String
  field :position,     type: Array
  field :gmaps,        type: Boolean

  def save_neighborhood(data)
    data["address_components"].each do |c|
      if c["types"].include? "neighborhood"
        self.neighborhood = c["long_name"]
      end
    end
  end
end
