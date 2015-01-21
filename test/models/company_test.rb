require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "company attributes must not be empty" do
  	company = Company.new
  	assert company.invalid?
  	assert company.errors[:name].any?
  	assert company.errors[:country].any?
  	assert company.errors[:state].any?
	end

	test "company expiry date shall not be in the past" do
		company = Company.create(name: "AVS", country: "Australia", state:"Victoria", expiry_date: Date.today - 5.day)
		assert_not company.valid?, "Company expiry date set in the past"
	end
end
