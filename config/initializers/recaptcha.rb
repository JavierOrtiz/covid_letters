Recaptcha.configure do |config|
  config.site_key  = Rails.application.credentials[:captcha_site_key]
  config.secret_key = Rails.application.credentials[:captcha_secret_key]
end