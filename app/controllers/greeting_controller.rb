class GreetingController < ApplicationController
  def index
  end

  def sendme
  	contact = Contact.new(greeting_params)
  	if contact.valid?
	  	GreetingMailer.send_email(greeting_params).deliver_later
	  	render json: { success: true, message: "OK" }
	  else
	  	render json: { success: false, message: "#{contact.errors.full_messages.join(', ')}. Please try again." }
	  end
  end

  private
  	def greeting_params
  		params.require(:contact).permit(:name, :email, :phone, :message)
  	end
end