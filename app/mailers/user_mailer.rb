class UserMailer < ActionMailer::Base
  default from: "hello@parcel.com"

  def message_email(user)
    mail(:to => user.email, :subject => "Someone is interested in your parcel!")
  end
end
