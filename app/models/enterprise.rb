class Enterprise < ApplicationRecord
    validates :name, presence: true
    belongs_to :sector
    has_many :users
    has_one :enterprise_detail
end
