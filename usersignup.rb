def set_up_username(username)
	username = username.to_s
	# username.class==that was to test to make  sure user names were stings only
	if username.length > 5
		"valid"
	else
		"invalid"
	end
end

def set_up_email_address(email_address)
	email_address = email_address.to_s
	puts "what is your email address"
	if email_address.class == String 
		true
	else 
		false
	end
end

def confirmed_email(confirmed_email)
	confirmed_email = confirmed_email.to_s
	email_address = email_address.to_s
	if email_address ==confirmed_email
		true
	else
		false

end
end


