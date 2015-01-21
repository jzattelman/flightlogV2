class Company < ActiveRecord::Base
	validates :name, :country, :state, :expiry_date, presence: true
	validate :expiration_date_cannot_be_in_the_past

	has_many :users

	def expiration_date_cannot_be_in_the_past
		if self.expiry_date.present? && self.expiry_date < Date.today
			errors.add(:expiry_date, "can't be in the past")
		end
	end
end
