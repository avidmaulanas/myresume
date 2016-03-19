class Message < ActiveRecord::Base
	validates :name, :phone, presence: true, length: { maximum: 30 }
	validates :message, presence: true, length: { maximum: 200 }
	validates :email, format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i }
	validates :phone, numericality: true
end
