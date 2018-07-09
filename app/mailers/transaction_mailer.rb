class TransactionMailer < ApplicationMailer

	default from: 'dev.test1122@gmail.com'

	def send_email(email_id, text)
    	mail(to: email_id, subject: "Account Notification", body: text)
  	end
end
