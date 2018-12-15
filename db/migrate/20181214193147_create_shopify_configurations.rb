class CreateShopifyConfigurations < ActiveRecord::Migration[5.1]
  def change
    create_table :shopify_configurations do |t|
      t.string 		:shop_name
    	t.string 		:api_key
    	t.string 		:secret
    	t.string 		:access_token	
    	t.text 			:options
      t.timestamps
    end
  end
end
