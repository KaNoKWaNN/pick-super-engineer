def pick_engineer()
	engineer_name = IO.readlines("engineers.txt")
	random = rand(engineer_name.size)
	return engineer_name[random]
end

def featureC(search)
	engineer_name = IO.readlines("engineers.txt")
	s= Array.new
	a=0
	if search.length >= 3 
	   for num in (1..engineer_name.length-1)
		engineers = engineer_name[num]
		engineer = engineers.include?(search)
		if  engineer == true
			s[a] = engineers
			a = a+1
		end
		if num == engineer_name.length-1
			a =0
			puts s[rand(s.size)]
		end
	   end
	end
end

featureC("ana")
