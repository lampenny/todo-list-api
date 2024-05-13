class CreateToDos < ActiveRecord::Migration[7.1]
  def change
    create_table :to_dos do |t|
      t.string :todo
      t.boolean :done
      t.integer :user_id

      t.timestamps
    end
  end
end
