class ApplicationMailer < ActionMailer::Base

  default from: ENV["YOUR_EMAIL_ADDRESS"]
  layout 'mailer'

end
