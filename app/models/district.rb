class District < ApplicationRecord
  validates :name, presence: true
  belongs_to :province
  has_many :wards
end
