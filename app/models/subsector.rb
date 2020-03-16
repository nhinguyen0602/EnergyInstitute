class Subsector < ApplicationRecord
  validates :name, presence: true
  has_many :sectors, dependent: :destroy
end
