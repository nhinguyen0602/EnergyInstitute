class Province < ApplicationRecord
  validates :name, presence: true
  validates :code, presence: true
  has_many :districts, dependent: :destroy
end
