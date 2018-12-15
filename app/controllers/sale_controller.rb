class SaleController < ApplicationController
  def index
  end

  def show
  end

  def authenticate
    
    get_access_token(params[:code])
  end

  def get_access_token(code)
    session = ShopifyAPI::Session.new("#{shop_name}.myshopify.com")
    url = "https://#{shop_name}.myshopify.com/admin/oauth/access_token"
    params = {
    	client_id: api_key,
    	client_secret: secret,
    	code: code
    }
    puts params
    binding.pry
    token = RestClient.post(url, params, headers={})
  end
end
