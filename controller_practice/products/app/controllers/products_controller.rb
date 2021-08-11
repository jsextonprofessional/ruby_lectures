class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def new
    
    end

    def create
        Product.create(name: params[:product][:name], price: params[:product][:price] )
        redirect_to '/products'
    end
end
