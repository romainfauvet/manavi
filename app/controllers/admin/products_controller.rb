class Admin::ProductsController < AdminController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path
    end
  end

  def edit
    @product = Product.where(id: params[:id]).first
  end

  def update
    @product = Product.where(id: params[:id]).first

    if @product.update_attributes(product_params)
      redirect_to admin_products_path
    end
  end

  def destroy
    @product = Product.where(id: params[:id]).first
    if @product.destroy
      redirect_to admin_products_path
    end
  end

private

  def product_params
    params.require(:product).permit(:sku, :reference, :title, :description, :price, :category_id)
  end
end
