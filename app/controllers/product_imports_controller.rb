class ProductImportsController < ApplicationController
  def new
    @product_import = ProductImport.new
  end

  def create
    @product_import = ProductImport.new(params[:product_import])
    if @product_import.save
      flash[:success] = "正常に読み込みました。"
      redirect_to root_url
    else
      render :new
    end
  end
end
