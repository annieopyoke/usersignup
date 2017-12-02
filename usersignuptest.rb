require "minitest/autorun"
require_relative "usersignup.rb"
class Testusersignup < Minitest::Test

	def test_assert_1_is_1
		assert_equal(1,1)
 	end
# following test were used to determin user name data type and no longer needed
	# def test_assert_that_usernames_are_strings
	# 	username  = "annie"
	# 	assert_equal(String, set_up_username(username))
	# end

	# def test_assert_that_intergers_are_still_strings
	# username = 1254
	# assert_equal(String, set_up_username(username))
	# end

	def test_assert_that__5_char_username_is_invalid
		username = 79687
		assert_equal("invalid", set_up_username(username))
	end

	def test_assert_that_6_char_username_is_valid
		username = "annie1"
		assert_equal("valid", set_up_username(username))
end

	def test_assert_that_email_address_is_given
		email_address = "annieopyoke@gmail.com"
		assert_equal(true, set_up_email_address(email_address))
	end
end

	def test_assert_that_email_is_confirmed
		email_address = "annieopyoke@gmail.com"
		confirmed_email = "annieopyoke@gmail.com"
		assert_equal("confirmed email", confirmed_email(confirmed_email))
	end

	def test_assert_that_password_contains_contains_at_least_8_chara
		password = "Cashdollar@17"
		assert_equal(true, password)
	end