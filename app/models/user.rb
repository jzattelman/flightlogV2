class User < ActiveRecord::Base
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
	validates :first_name, :last_name, :email, :context, presence: true
	belongs_to :company

	scope :guests, -> { where(context: 'Guest') } 
	scope :chiefpilots, -> { where(context: 'Chief Pilot') } 
	scope :remotepilots, -> { where(context: 'Remote Pilot') }
end
