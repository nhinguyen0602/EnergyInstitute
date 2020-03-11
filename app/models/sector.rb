class Sector < ApplicationRecord
  validates :name, presence: true
  belongs_to :subsector
  has_many :enterprises, dependent: :destroy
end
