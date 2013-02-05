class SessionsController < ApplicationController

  def new
    redirect_to '/auth/facebook'
#   redirect_to '/auth/developer'
  end

  def create
    auth = request.env['omniauth.auth']
    user = User.where(
          provider: auth['provider'], 
          uid:      auth['uid'].to_s,
        ).first || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    user.add_role :admin if User.count == 1 # make the first user an admin
    if user.email.blank?
      redirect_to edit_user_path(user),
          alert: 'Please enter your email address.'
    else
      redirect_to root_url, notice: 'Signed in!'
    end

  end

  def destroy
    reset_session
    redirect_to root_url, notice: 'Signed out!'
  end

  def failure
    pmh = params[:message].try(:humanize)
    s = pmh.nil? ? 'No message' : pmh
    flash[:notice] = s
    redirect_to root_url,
        alert: "Authentication error: #{s}"
  end

# See config/initializers/omniauth.rb
  def omni_auth_failure
halt
    s = env['omniauth.error.type']
    flash[:notice] = s
    redirect_to root_url,
        alert: "Authentication error: #{s}"
  end

end
