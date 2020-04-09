require 'sendgrid-ruby'
include SendGrid

from = Email.new(email: 'sneha.sabu2020@gmail.com')
subject = 'Hello World from the SendGrid Ruby Library!'
to = Email.new(email: 't17ss19@abdn.ac.uk')
content = Content.new(type: 'text/plain', value: 'Hello, Email!')
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['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'])
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.headers