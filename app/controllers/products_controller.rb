class ProductsController < ApplicationController

	def index 
		@products = Product.all 
	end 

	def show 
		@product = Product.where(params[:id])
	end 

end


