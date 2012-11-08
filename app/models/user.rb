class User
  include Mongoid::Document
  field :provider,         type: String
  field :uid,              type: String
  field :first_name,       type: String
  field :email,            type: String
  field :image,            type: String
  field :oauth_token,      type: String
  field :oauth_expires_at, type: Time

  attr_protected :provider, :uid, :first_name, :email, :image, :oauth_token, :oauth_expires_at

  has_many :gardens

  def self.from_omniauth(auth)
    user = where(auth.slice(:provider, :uid))
    return user.first unless user.blank?

    self.new do |user|
      user.provider         = auth.provider
      user.uid              = auth.uid
      user.first_name       = auth.info.first_name
      user.email            = auth.info.email
      user.image            = auth.info.image
      user.oauth_token      = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
