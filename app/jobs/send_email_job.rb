class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(email, text)
  	TransactionMailer.send_email(email, text).deliver
  end
end
