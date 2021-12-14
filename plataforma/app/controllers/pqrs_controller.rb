
# Esta clase Pqrs funcionara como controlador para renderizar hacia la vista Pqrs con sus rescpectivos metodos
# @Autor: David Cabrera - Desarrollador
# @version: 1.0
# @see <a href="http://www.variedadesmary.com">Variedades Mary</a>

class PqrsController < ApplicationController

  # @param: Metodo index que traera todos los registros de la tabla pqrs de nuestra base de datos
  def index
    @pqrs = Pqr.all
  end

  # @param: Metodo new que permitira crear nuevo registro en la tabla pqrs
  def new
    @pqr = Pqr.new
  end

  # @param: Metodo show que traera un registro en especifico de la tabla pqrs
  def show
  end

  # @param: Metodo create donde se creara el registro en la tabla pqrs
  def create
    @pqr = Pqr.new(pqr_params)
    if @pqr.save
      redirect_to pqrs_path
    else
      render :new
    end
  end
  # @param: Metodo edit que permitira editar un registro en la tabla pqrs
  def edit
    @pqr = Pqr.find(params[:id])
  end

    # @param: Metodo update que permitira actualizar nuevo registro en la tabla pqrs
  def update
    @pqr = Pqr.find(params[:id])
      if @pqr.update(pqr_params)
        redirect_to pqrs_path
      else
        render :edit
      end
  end

    # @param: Metodo destroy que permitira eliminar un registro en la tabla pqrs
  def destroy
    @pqr = Pqr.find(params[:id])
    @pqr.destroy
    redirect_to pqrs_path
  end


  private

  def pqr_params
    params.require(:pqr).permit(:code_pqr, :code_customer, :code_sale, :kind, :description, :state, :reference, :date, :kind_id)
  end

end
