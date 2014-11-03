#create by Manager
def pick_engineer()
  engineer_name = IO.readlines("engineers.txt")
  random = rand(engineer_name.size)
  return engineer_name[random]
end

#create by featureB
def pick_featureB(name)
  rn = name.split(" ")
  if rn.size > 1
    new = rn[1]
    return rn[0]+" "+new[0]+"..."
  else
    return name
  end
end

#create by featureA
def pick_featureA(name) 
  name_A=name.gsub(" ",".")
  return name_A
end
#create by featureC
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
################### Test Code ########################
test = pick_engineer()
puts pick_featureA(test)
puts pick_featureB(test)
t = ARGV[0]
if t != nil
	featureC(t)
else
	puts "you don't type"
end
