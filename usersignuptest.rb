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

	def test_assert_that_email_address_is_a_string
		email_address = "annieopyoke@gmail.com"
		assert_equal("valid", set_up_email_address(email_address))
	end

	def test_assert_that_email_confirmation_is_the_same_as_email
		email_address = "annieopyoke@gmail.com"
		confirmed_email = "annieopyoke@gmail.com"
		assert_equal("valid", confirmed_email(email_address, confirmed_email))
	end

	def test_assert_that_email_is_invalid_if_not_the_same
		email_address = "annieopyoke@gmail.com"
		confirmed_email = "annieopyoke@gmailcom"
		assert_equal("invalid", confirmed_email(email_address, confirmed_email))
	end

	def test_assert_that_password_contains_contains_at_least_8_chara
		password = "Cashdollar@17"
		assert_equal("valid", password_set_up_length(password))
	end

	def test_assert_that_password_contains_all_requirment
			password = "Cashdollar@17"
		assert_equal("very strong", set_up_password_cap(password))
end
  def test_assert_for_no_capital_letters_is_to_weak
  		password = "cashdollar@17"
		assert_equal("too weak", set_up_password_cap(password))
end
def test_assert_for_no_lower_is_too_weak
	password = "CASHDOLLAR@17"
		assert_equal("too weak", set_up_password_cap(password))
end
def test_assert_for_no_special_is_too_weak
	password = "Cashdollar17"
		assert_equal("too weak", set_up_password_cap(password))
end
def test_assert_for_no_number_is_too_weak
	password = "Cashdollar@"
		assert_equal("too weak", set_up_password_cap(password))
end
def test_assert_that_password_is_too_short
	password = "Cash77@"
		assert_equal("too weak", set_up_password_cap(password))
end
def test_assert_that_password_is_confirmed
			password = "Cashdollar@17"
			confirmed_password = "Cashdollar@17"
		assert_equal("valid", confirmed_password(confirmed_password, password))

end
def test_assert_that_passwords_are_not_equal
	password = "Cashdollar@17"
	confirmed_password = "Cashdoppar@17"
		assert_equal("invalid", confirmed_password(confirmed_password, password))
end
end