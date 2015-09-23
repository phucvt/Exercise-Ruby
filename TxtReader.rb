 require "./tax"
 class Reader
	 def input_product
		file = File.open("Input_product.txt","r")
		array_product = Array.new
		if file
			while (line = file.gets)
				array_new = line.split(',')
				product = Product.new(array_new[0].to_i, array_new[1], array_new[2].to_i)			
				array_product << product
			end
		else
			puts "Cannot open file"
		end
		file.close
		array_product
	end
end
reader = Reader.new
array_product = reader.input_product
array_product.each { |product| p product.result }
tax = Tax.new(array_product)
print "Total price : #{tax.total_price}$"



