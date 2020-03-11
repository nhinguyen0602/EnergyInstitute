class Sector < ApplicationRecord
  belongs_to :subsector
  has_many :enterprises, dependent: :destroy
end
