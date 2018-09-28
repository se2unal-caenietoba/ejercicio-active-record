class Curso < ApplicationRecord
    has_many :historia_academicas
    has_many :estudiantes, through: :historia_academicas
    
    has_many :grupos
    
    has_many :abre, class_name: "Curso", foreign_key: "requisito_id"
    belongs_to :requisito, class_name: "Curso", optional: true
end
