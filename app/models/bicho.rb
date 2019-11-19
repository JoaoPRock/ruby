class Bicho < ApplicationRecord
    belongs_to :ambiente

    has_many :bicho_tipos
    has_many :tipos, through: :bicho_tipos
    
end
