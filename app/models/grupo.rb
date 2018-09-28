class Grupo < ApplicationRecord
    has_many :inscribe_cursos
    has_many :estudiantes, through: :inscribe_cursos
    
    belongs_to :profesor
    belongs_to :curso
end
