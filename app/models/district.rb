class District < ApplicationRecord
  validates :name, presence: true
  belongs_to :province
end
