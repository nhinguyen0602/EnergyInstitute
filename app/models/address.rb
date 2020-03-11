class Address < ApplicationRecord
  validates :provincial, presence: true
  validates :district, presence: true
  validates :commune, presence: true
  belongs_to :enterprise
end
