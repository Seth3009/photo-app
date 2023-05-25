class ExampleMailer < ApplicationMailer

  def sample_email
    mail(to: 'setiadi.seth@gmail.com', subject: 'Test Email')
  end
end
