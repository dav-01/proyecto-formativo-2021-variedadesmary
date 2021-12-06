class CategoriaController < ApplicationController

  def index
    @categorias = Categoria.all
  end

  def new
    @categoria = Categoria.new
  end

  def show
  end

  def create
    @categoria = Categoria.new(categoria_params)
    if @categoria.save
      redirect_to categoria_path
    else
      render :new
    end
  end

  def edit
    @categoria = Categoria.find(params[:id])
  end

  def update
    @categoria = Categoria.find(params[:id])
      if @categoria.update(categoria_params)
        redirect_to categoria_path
      else
        render :edit
      end
  end

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
