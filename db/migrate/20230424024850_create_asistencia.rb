class CreateAsistencia < ActiveRecord::Migration[7.0]
  def change
    create_table :asistencia do |t|
      t.references :alumno, null: false, foreign_key: true
      t.integer :asistencia

      t.timestamps
    end
  end
end
