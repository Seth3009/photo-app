class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"

  def sample_email
    mail(to: 'recipient@example.com', subject: 'Test Email')
    deliver_now
  end
end
