class Correo < ApplicationRecord
    
    validates :correo_direccion, uniqueness: true
    validates :correo_nickname, uniqueness: true
    validates :correo_nickname, length: {in: 6..20}
    
    belongs_to :imageable, polymorphic: true
end
