require "./product"
class Tax
	def initialize array_product
		@array_product = array_product
	end
	def total_price
		total_price = 0
		@array_product.each { |product| total_price += product.total_price_product }
		total_price
	end
end