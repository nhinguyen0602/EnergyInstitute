class ProductivitiesController < ApplicationController
  def index
    productivities = ProductivityService::Index.call(params[:product_id], params[:year])
    data = {
      productivities: productivities
    }
    render_data data      
  end

  def update
    productivities = ProductivityService::Update.call(params[:product_id], productivity_params)
    data = {
      productivities: productivities
    }
    render_data data 
  end

  def destroy
    ProductivityService::Destroy.call(params[:id])
  end

  def productivity_params
    params.require(%i[year_of_investigation amount])
    params.permit(:year_of_investigation, :amount)
  end

end
