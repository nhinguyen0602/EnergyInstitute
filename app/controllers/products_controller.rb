class ProductsController < ApplicationController
  def create
    product = ProductService::Create.call(@current_user.enterprise.id, product_params)
    render_one product
  end

  def show
    product =ProductService::Show.call(params[:id])
    render_one product
  end

  def destroy 
    ProductService::Destroy.call(params[:id])
  end

  def update
    product = ProductService::Update.call(params[:id], product_params)
    render_one product
  end

  def render_one product
    data = {
      product: product
    }
    render_data data
  end

  def product_params
    params.require(%i[name])
    params.permit(:name)  
  end
end
