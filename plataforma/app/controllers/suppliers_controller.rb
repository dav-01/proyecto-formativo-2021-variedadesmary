
# Esta clase Suppliers funcionara como controlador para renderizar hacia la vista Pqrs con sus rescpectivos metodos
# @Autor: David Cabrera - Desarrollador
# @version: 1.0
# @see <a href="http://www.variedadesmary.com">Variedades Mary</a>

class SuppliersController < ApplicationController

  before_action :authenticate_user!

  # @param: Metodo index que traera todos los registros de la tabla suppliers de nuestra base de datos
  def index
    if current_user.has_role? :admin
    @suppliers = Supplier.all
    else
    flash[:alert] = "No tiene acceso"
    redirect_to root_path
    end
  end

  # @param: Metodo new que permitira crear nuevo registro en la tabla suppliers
  def new
    @supplier = Supplier.new
  end

  # @param: Metodo show que traera un registro en especifico de la tabla suppliers
  def show
    @supplier = Supplier.find(params[:id])
  end

 # @param: Metodo create donde se creara el registro en la tabla suppliers
  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect_to suppliers_path
    else
      render :new
    end
  end

  # @param: Metodo edit que permitira editar un registro en la tabla suppliers
  def edit
    @supplier = Supplier.find(params[:id])
  end

  # @param: Metodo update que permitira actualizar nuevo registro en la tabla suppliers
  def update
    @supplier = Supplier.find(params[:id])
      if @supplier.update(supplier_params)
        redirect_to suppliers_path
      else
        render :edit
      end
  end

  # @param: Metodo destroy que permitira eliminar un registro en la tabla suppliers
  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
    redirect_to suppliers_path
  end


  private

  def supplier_params
    params.require(:supplier).permit(:code_suppliers, :id_person, :nit_company, :fullname, :kind, :sex, :email, :telephone, :address, :photo, :category_id)
  end

end
