class ProductsController < ApplicationController
  impressionist :actions=>[:show]
  before_action :authenticate_user!, only:[:add_to_cart]

  def index
    @products = Product.all.order("position ASC")
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])

    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已成功將 #{@product.title} 加入購物車"
    else
      flash[:notice] = "你的購物車內已有此物品"
    end
    redirect_to :back
  end
end
