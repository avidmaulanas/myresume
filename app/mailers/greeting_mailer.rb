class GreetingMailer < ApplicationMailer

	def send_email(params)
    @name 	 = params[:name]
    @email   = params[:email]
    @phone   = params[:phone]
    @message = params[:message]
    mail(to: 'avid@41studio.com', subject: "MyResume - Greeting from #{@name}")
  end
end
