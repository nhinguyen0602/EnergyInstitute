class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  scope :order_by_year, ->{order("year_of_investigation DESC")}
  scope :at_year, ->(year){
    if year
      where("year_of_investigation =?", year)
    else
      all
    end
  }
end
