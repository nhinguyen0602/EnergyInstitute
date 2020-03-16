class Product < ApplicationRecord
  belongs_to :enterprise
  has_many :productivities, dependent: :destroy
  has_many :greenhouse_emissions
  validates :name, presence: true
end
