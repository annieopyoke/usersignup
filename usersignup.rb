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
	if email_address.length > 8
	"valid"
else
		"invalid"
	end
end

def confirmed_email(confirmed_email, email_address)
	confirmed_email = confirmed_email.to_s
	email_address = email_address.to_s
	if email_address ==confirmed_email
	"valid"
	else
		"invalid"
	end

end	

def password_set_up_length(password)

if password.length > 7 
	"valid"
else
	"invalid"	
end
end

def set_up_password_cap(password)
	capital = [*('A'...'Z')]
	lower = [*('a'...'z')]
	number = [*('0'...'9')]
	special = ["!", "@", "#", "$", "%", "&", "*" ]
password = password.to_s
	if  password_set_up_length(password) == "valid"
	puts password
	has_capital ="invalid"
	has_lower = "invalid"
	has_number = "invalid"
	has_special = "invalid"
	character = password.split(//)
	puts character
	character.each do |letter|
if capital.include?(letter) == true
	has_capital = "valid"
end
if lower.include?(letter) == true
	has_lower = "valid"
end
if number.include?(letter) == true
	has_number = "valid"
end
if special.include?(letter) == true
	has_special = "valid"
end
end
end
if has_capital == "valid" && has_lower == "valid" && has_number == "valid" && has_special == "valid"
"very strong"
else 
	"too weak"
end
end

def confirmed_password(password, confirmed_password)
	if password == confirmed_password
		"valid"
	else
		"invalid"
end
end