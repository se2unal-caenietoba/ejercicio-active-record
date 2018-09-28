class InscribeCurso < ApplicationRecord
    belongs_to :estudiante
    belongs_to :grupo
end
