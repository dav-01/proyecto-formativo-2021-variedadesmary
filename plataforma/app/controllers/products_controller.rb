
# Esta clase Product funcionara como controlador para renderizar hacia la vista products con sus rescpectivos metodos
# @Autor: David Cabrera - Desarrollador
# @version: 1.0
# @see <a href="http://www.variedadesmary.com">Variedades Mary</a>

class ProductsController < ApplicationController

  before_action :authenticate_user!, except: [:show]

  # @param: Metodo index que traera todos los registros de la tabla productos de nuestra base de datos
  def index
    if current_user.has_role? :admin
      @products = Product.all
    else
    flash[:alert] = "No tiene acceso"
    redirect_to root_path
  end
  end

  # @param: Metodo new que permitira crear nuevo registro en la tabla productos
  def new
    @product = Product.new
  end

    # @param: Metodo create donde se creara el registro en la tabla productos
  def create
    @product = Product.new(product_params)
      if @product.save
        redirect_to products_path
      else
        render :new
      end
  end

  # @param: Metodo show que traera un registro en especifico de la tabla productos
  def show
    @products = Product.all
    @product = Product.find(params[:id])

  end
  # @param: Metodo edit que permitira editar un registro en la tabla productos
  def edit
    @product = Product.find(params[:id])
  end

  # @param: Metodo update que permitira actualizar nuevo registro en la tabla productos
  def update
    @product = Product.find(params[:id])
      if @product.update(product_params)
        redirect_to products_path
      else
        render :edit
      end
  end

  # @param: Metodo destroy que permitira eliminar un registro en la tabla productos
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :characteristic, :supplier_id, :mark, :kind, :discount, :reference, {photos: []})
  end

end
