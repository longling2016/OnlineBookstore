class StoreController < ApplicationController
	include CurrentCart
	skip_before_action :authorize
	before_action :set_cart
  def index
  	@products = Product.all
  	if params[:search]
    @products = Product.search(params[:search]).order("created_at DESC")
  else
    @products = Product.all.order('created_at DESC')
  end
  end
end
