class CreateEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :estudiantes do |t|
      t.string :estudiante_nombre

      t.timestamps
    end
  end
end
