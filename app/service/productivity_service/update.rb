module ProductivityService::Update
  def self.call(product_id, productivity_params)
    productivity_at_year = Productivity.find_or_initialize_by(
        product_id: product_id,
        year_of_investigation: productivity_params[:year_of_investigation]
      )
    productivity_at_year.assign_attributes(productivity_params.except(:year_of_investigation))
    productivity_at_year.save!
    productivity_at_year
  end  
end