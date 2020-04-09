ActionMailer::Base.smtp_settings = {
  domain: 'shopperly.herokuapp.com',
  address:        "smtp.sendgrid.net",
  port:            587,
  authentication: :plain,
  user_name:      'apikey',
  password:       ENV['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']
}