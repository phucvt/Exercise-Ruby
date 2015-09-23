class Product
	attr_reader :product_count, :product_name, :product_price
	@@product_tax_free = [ "books", "medicine", "food" ]
	def initialize(product_count, product_name, product_price)
		@product_count = product_count
		@product_name = product_name
		@product_price = product_price
	end
	def tax_each_product
		count_tax = 0
		count_tax += 0.1 if free_tax? == false
		count_tax += 0.05 if import_tax? == true
		count_tax
	end
	def total_price_product
		total_price = ((1 + tax_each_product ) * @product_count* @product_price).round(3) 
	end
	def  result
		print "Count : #{@product_count} \t Name : #{@product_name} \t Price : #{@product_price}$ \t Tax: #{tax_each_product} \t Total price product: #{total_price_product}"
	end
	private
	def free_tax?
		@@product_tax_free.index(@product_name) 
	end
	def import_tax?
		@product_name.index("import") 
	end
end



