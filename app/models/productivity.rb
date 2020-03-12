class Productivity < ApplicationRecord
    validates :year_of_investigation, presence: true
    validates :amount, presence: true
    belongs_to :product
end
