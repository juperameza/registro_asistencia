class CreateAlumnos < ActiveRecord::Migration[7.0]
  def change
    create_table :alumnos do |t|
      t.integer :numero_cuenta
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.integer :grado
      t.string :grupo

      t.timestamps
    end
  end
end
