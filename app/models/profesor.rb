class Profesor < ApplicationRecord
    has_many :grupos
    
    has_many :correos, as: :imageable
end
