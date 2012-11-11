Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '200273886775051', '3fab8d8d75ec031c9065cbb715a3ab71'
end
