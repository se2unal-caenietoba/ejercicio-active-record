class Estudiante < 
    
    validates :estudiante_nombre, length: {maximum:60}
    validates :estudiante_nombre, format: {with: /\A[a-zA-Z]+\Z/, message: "only allows letters"}
    validates :estudiante_nombre, presence: true
    
    has_many :historia_academicas
    has_many :cursos, through: :historia_academicas
    
    has_many :correos, as: :imageable
    
    has_many :inscribe_cursos
    has_many :grupos, through: :inscribe_cursos
end
