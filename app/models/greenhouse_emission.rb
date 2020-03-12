class GreenhouseEmission < ApplicationRecord
    belongs_to :enterprise
    belongs_to :product
end
