class ChangeUserIdToReference < ActiveRecord::Migration[7.1]
  def change
    remove_column :to_dos, :user_id, :integer
    add_reference :to_dos, :user, foreign_key: true
  end
end
