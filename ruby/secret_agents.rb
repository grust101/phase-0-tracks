def encrypt(password)
	index = 0 
	encrypt_password = password
	while index < password.length
		if password[index] == "z"
			password[index]= "a"
		elsif password[index] == " "
			encrypt_password[index] = password[index]
		else
			encrypt_password[index] = password[index].next
			index += 1
		end
	end
	return encrypt_password
end


def decrypt(password)
	index = 0
	variable_range = "abcdefghijklmnopqrstuvwxyz"
	varible_index = 0
	decrypt_password = password
	while index < password.length
		if password[index] == " "
			decrypt_password[index] = password[index]
			index +=1
		else
			until password[index] ==  variable_range[variable_index]
			variable_index += 1
			end
			decrypt_password[index] = variable_range[variable_index - 1]
			index += 1
		end
		variable_index = 0 
	end
	return decrypt_password
end

encypted_password = encrypt("abc")
decrypt_edpassword = decrypt(encypted_password)



