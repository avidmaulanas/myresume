class GreetingMailer < ApplicationMailer

	def send_email(params)
    @name 	 = params[:name]
    @email   = params[:email]
    @phone   = params[:phone]
    @message = params[:message]
    mail(to: 'avidmaulanas@gmail.com', subject: "Greeting from #{@name}")
  end
end
