class Enterprise < ApplicationRecord
    validates :name, presence: true
    validates :production_value, presence: true
    validates :number_of_employee, presence: true
    validates :year_of_investigation, presence: true

    belongs_to :sector
    has_many :users
    has_one :address
end
