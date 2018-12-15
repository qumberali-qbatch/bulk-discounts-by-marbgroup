class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
    	t.string 		:title
    	t.string 		:vendor
    	t.string 		:product_type
    	t.string 		:tags
      t.float     :price
    	t.boolean 	:published
      t.integer   :shopify_product_id, limit: 8
      t.timestamps
    end
  end
end
