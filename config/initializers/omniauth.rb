Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,
      Figaro.env.facebook_key,
      Figaro.env.facebook_secret
end

# Per:
# http://stackoverflow.com/questions/10737200/how-to-rescue-omniauthstrategiesoauth2callbackerror

::OmniAuth.config.on_failure =
    SessionsController.action(:omni_auth_failure)
