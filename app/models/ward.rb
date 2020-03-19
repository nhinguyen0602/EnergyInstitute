class Ward < ApplicationRecord
  validates :name, presence: true 
  validates :prefix, presence: true
  belongs_to :district 
end
