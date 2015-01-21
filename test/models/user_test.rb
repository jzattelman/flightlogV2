require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "user attributes should not be blank" do
  	user = User.new
  	assert user.invalid?
  	assert user.errors[:first_name].any?
  	assert user.errors[:last_name].any?
		assert user.errors[:email].any?
		assert user.errors[:context].any?
  end
end
