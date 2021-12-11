
# Esta clase Sale funcionara como controlador para renderizar hacia la vista sale con sus rescpectivos metodos que trata de las ventas
# @Autor: David Cabrera - Desarrollador
# @version: 1.0
# @see <a href="http://www.variedadesmary.com">Variedades Mary</a>

class SaleController < ApplicationController

  # @param: Metodo index que traera todos los registros de la tabla sale(ventas) de nuestra base de datos
  def index
    @sale = Sale.all
  end

  # @param: Metodo show que traera un registro en especifico de la tabla sale(ventas)
  def show
    @sale = Sale.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :characteristic, :mark, :kind, :discount, :reference, {photos: []})
  end

end
