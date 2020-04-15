class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to company_shop_path(@company), notice: 'El producto se creo exitosamente'
    else
      flash[:alert] = @product.errors.full_messages
      render :new
    end
  end

  def update
    if @product.update(product_params)
      redirect_to company_shop_path(@company), notice: 'El producto se actualizo exitosamente'
    else
      flash[:alert] = @product.errors.full_messages
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to company_shop_path(@company), notice: 'El producto se elimino exitosamente'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :company_id, :category_id, :image)
    end
end
