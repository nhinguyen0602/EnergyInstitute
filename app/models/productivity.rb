class Productivity < ApplicationRecord
  validates :year_of_investigation, presence: true
  validates :amount, presence: true
  belongs_to :product

  scope :belong_product, ->(product_id){ where("product_id= ?", product_id) }
end
