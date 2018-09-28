class CreateProfesors < ActiveRecord::Migration[5.2]
  def change
    create_table :profesors do |t|
      t.string :profesor_nombre

      t.timestamps
    end
  end
end
