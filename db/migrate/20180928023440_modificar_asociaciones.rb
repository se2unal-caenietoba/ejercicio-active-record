class ModificarAsociaciones < ActiveRecord::Migration[5.2]
  def change
    change_table :historia_academicas, id: false do |t|
      t.belongs_to :estudiante, index: true
      t.belongs_to :curso, index: true
    end
    
    change_table :inscribe_cursos do |t|
      t.belongs_to :estudiante, index: true
      t.belongs_to :Grupo, index: true
    end
    
    change_table :grupos do |t|
      t.belongs_to :curso, index: true
      t.belongs_to :profesor, index: true
    end
    
    change_table :cursos do |t|
      t.references :requisito, index: true
    end
    
    change_table :correos do |t|
      t.references :imageable, polymorphic: true, index: true
    end
  end
end
