class ProductsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create

  end

  def show
    @product = Product.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:naam, :beschrijving, :prijs, :totaal_voorraad, :op_voorraad )
  end

end
