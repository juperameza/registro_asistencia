class CreateAssistances < ActiveRecord::Migration[7.0]
  def change
    create_table :assistances do |t|
      t.integer :account, null: false
      t.string :name, null: false
      t.string :dad_last, null: false
      t.string :mother_last, null: false
      t.integer :grade, null: false
      t.string :group, null: false

      t.timestamps
    end
  end
end
