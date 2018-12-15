ActiveAdmin.register Product do
	permit_params :title, :price, :vendor, :body_html, :product_type, :tags
	# batch_action :destroy, false
	batch_action :update_products_price do |selection|
  if (@products = Product.where(id: selection)).blank?
    redirect_to :back, flash: {error: "No products were selected!"}
  else
    render template: 'products/edit_products_price' #, layout: 'some_custom_layout' - I had some problems trying to use active_admin layout here, but custom one works fine (you may need it for styling)
  end
end
	index do
		selectable_column
	  id_column
	  column :title
	  column :price
	  column :vendor
	  column :product_type
	  column :tags
	  column :published
	  actions
	end
  action_item(:import_products, only: :index)  do
    link_to 'Import Products', action: 'import_products'
  end

  collection_action :import_products do

  end

	 before_create do |product|
    # shopify_product = Product.new.create_product_on_shopify_store(product)
    # product.shopify_product_id = shopify_product.id
  end
end
# 