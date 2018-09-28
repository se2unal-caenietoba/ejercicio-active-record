class CreateCorreos < ActiveRecord::Migration[5.2]
  def change
    create_table :correos do |t|
      t.string :correo_nickname
      t.string :correo_direccion

      t.timestamps
    end
  end
end
