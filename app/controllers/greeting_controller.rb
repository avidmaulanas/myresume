class GreetingController < ApplicationController
  def index
  end

  def do_send
  	contact = Message.new(greeting_params)
  	if contact.save
	  	render json: { success: true, message: "OK" }
	  else
	  	render json: { success: false, message: "#{contact.errors.full_messages.join(', ')}. Please try again." }
	  end
  end

  private
  	def greeting_params
  		params.require(:message).permit(:name, :email, :phone, :message)
  	end
end
