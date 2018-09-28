class CreateInscribeCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :inscribe_cursos do |t|

      t.timestamps
    end
  end
end
