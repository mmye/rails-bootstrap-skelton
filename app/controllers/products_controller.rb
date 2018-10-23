class ProductsController < ApplicationController
  def index
    @products = Product.order(:name)
    respond_to do |format|
      format.html
      format.csv { send_data @products.to_csv }
      format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:success] = '商品の作成に成功しました。'
      redirect_to products_url
      render "new"
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:success] = "商品の更新に成功しました。"
      redirect_to products_url
    else
      render "edit"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:success] = "商品の削除に成功しました。"
    redirect_to products_url
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :released_on)
  end

end
