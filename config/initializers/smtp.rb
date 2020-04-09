ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: 587,
  domain: 'shopperly.herokuapp.com',
  user_name: ENV['app164824422@heroku.com'],
  password: ENV['aktgs4hx4370'],
  authentication: :login,
  enable_starttls_auto: true
}