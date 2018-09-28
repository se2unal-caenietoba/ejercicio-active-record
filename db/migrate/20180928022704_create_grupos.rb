class CreateGrupos < ActiveRecord::Migration[5.2]
  def change
    create_table :grupos do |t|
      t.integer :grupo_cupos

      t.timestamps
    end
  end
end
