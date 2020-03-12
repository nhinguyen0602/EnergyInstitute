class Product < ApplicationRecord
  belongs_to :enterprise
  has_many :productivities
  validates :name, presence: true
end
