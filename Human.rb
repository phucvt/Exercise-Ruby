class Human
	attr_reader :name, :age, :gender
	def initialize(name, age, gender)
	 	@name = name
	 	@age = validate_age(age)
	 	@gender = gender
	 end 
	 def validate_age age
	 	if age >= 1
	 		return age
	 	else
	 		return age = 0
	 	end
	 end	
	 def result
	 	print "Name: #{@name} \t Age: #{@age} \t Gender: #{@gender}"
	 end
end
