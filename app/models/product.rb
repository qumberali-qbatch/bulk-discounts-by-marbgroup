class Product < ApplicationRecord

	def create_product_on_shopify_store(product)
		shopify_config = ShopifyConfiguration.last
		product = product.as_json
		product.delete("id")
		product.delete("created_at")
		product.delete("updated_at")
		product.delete("published")
		session = ShopifyAPI::Session.new("#{shopify_config.shop_name}.myshopify.com", shopify_config.access_token, {})
		ShopifyAPI::Base.activate_session(session)
		# Create a new product
		new_product = ShopifyAPI::Product.new(product)
		new_product.save
		new_product
	end
end
