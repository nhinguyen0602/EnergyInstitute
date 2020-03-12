class EnterpriseDetail < ApplicationRecord
  validates :provincial, presence: true
  validates :district, presence: true
  validates :commune, presence: true
  validates :year_of_investigation, presence: true
  validates :number_of_employee, presence: true
  validates :production_value, presence: true
  belongs_to :enterprise
end
