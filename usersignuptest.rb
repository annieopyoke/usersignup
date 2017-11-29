require "minitest/autorun"
require_relative "usersignup.rb"
class Testusersignup < Minitest::Test

	def test_assert_1_is_1
		assert_equal(1,1)
end

	def test_assert_that_usernames_are_strings
		username  = "annie"
		assert_equal(String, set_up_username(username))
	end
def test_assert_that_intergers_are_still_strings
	username = 1254
	assert_equal(String, set_up_username(username))
end



end