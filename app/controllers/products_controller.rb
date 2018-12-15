class ProductsController < ApplicationController
	def  edit_products_price
		products = Product.where(id: params[:collection_products][:ids])
		products.update_all(price: params[:collection_products][:new_price])
		redirect_to admin_products_url
	end
end
