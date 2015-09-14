require "./Human"
class Reader
	def input_human
		file = File.open("input_human.txt","r")
		array_human = Array.new() 
		if file
			while(line = file.gets)
				array_new = line.split(',')
				human = Human.new(array_new[0].to_s, array_new[1].to_i, array_new[2].to_s)
				array_human << human
			end
		else
			puts "Cannot open file"
		end
		file.close
		array_new
		array_human
	end
end
reader = Reader.new
array_human = reader.input_human
array_human.each{ |human| human.result }
puts "Human is female and greater or equal 18"
array_gender_female = array_human.select{ |human| human.gender.strip.eql? "female"}
array_female_age = array_gender_female.select{ |human| human.age >= 18 }
array_female_age.each{ |human| human.result}
puts "Human is male and greater or equal 18"
array_gender_male = array_human.select{ |human| human.gender.strip.eql? "male"}
array_male_age = array_gender_male.select{ |human| human.age >= 18 }
array_male_age.each{ |human| human.result}

