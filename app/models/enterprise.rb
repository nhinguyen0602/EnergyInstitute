class Enterprise < ApplicationRecord
    belongs_to :sector
    belongs_to :user
    has_one :address
end
