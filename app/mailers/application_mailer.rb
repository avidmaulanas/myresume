class ApplicationMailer < ActionMailer::Base
  default from: '"MyResume" <no-reply@myresume.com>'
  layout 'mailer'
end
