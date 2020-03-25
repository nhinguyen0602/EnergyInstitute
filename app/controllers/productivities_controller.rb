class ProductivitiesController < ApplicationController
  def index
    product, productivities = ProductivityService::Index.call(params[:product_id], params[:year])
    data = {
      product: product,
      productivities: productivities
    }
    render_data data      
  end

  def update
    product, productivities = ProductivityService::Update.call(params[:product_id], productivity_params)
    data = {
      product: product,
      productivities: productivities
    }
    render_data data 
  end

  def productivity_params
    params.require(%i[year_of_investigation amount])
    params.permit(:year_of_investigation, :amount)
  end

end
