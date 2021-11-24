class SaleController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :characteristic, :mark, :kind, :discount, :reference, {photos: []})
  end

end
