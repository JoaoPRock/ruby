class Tipo < ApplicationRecord

    has_many :bicho_tipos
    has_many :bichos, through: :bicho_tipos

end
