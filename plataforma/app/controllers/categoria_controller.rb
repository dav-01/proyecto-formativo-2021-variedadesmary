
# Esta clase Categoria funcionara como controlador para renderizar hacia la vista categoria con sus rescpectivos metodos
# @Autor: David Cabrera - Desarrollador
# @version: 1.0
# @see <a href="http://www.variedadesmary.com">Variedades Mary</a>

class CategoriaController < ApplicationController

  # @param: Metodo index que traera todos los registros de la tabla categorias de nuestra base de datos
  def index
    @categorias = Categoria.all
  end

  # @param: Metodo new que permitira crear nuevo registro en la tabla categorias
  def new
    @categoria = Categoria.new
  end

  # @param: Metodo show que traera un registro en especifico de la tabla categorias
  def show
  end

  # @param: Metodo create donde se creara el registro en la tabla categorias
  def create
    @categoria = Categoria.new(categoria_params)
    if @categoria.save
      redirect_to categoria_path
    else
      render :new
    end
  end
  # @param: Metodo edit que permitira editar un registro en la tabla categorias
  def edit
    @categoria = Categoria.find(params[:id])
  end
  # @param: Metodo update que permitira actualizar nuevo registro en la tabla categorias
  def update
    @categoria = Categoria.find(params[:id])
      if @categoria.update(categoria_params)
        redirect_to categoria_path
      else
        render :edit
      end
  end
  # @param: Metodo destroy que permitira eliminar un registro en la tabla categorias
  def destroy
    @categoria = Categoria.find(params[:id])
    @categoria.destroy
    redirect_to categoria_path
  end


  private

  def categoria_params
    params.require(:categoria).permit(:name, :description)
  end

end
