class AddUserIdToRecords < ActiveRecord::Migration[6.1]
  def change
    add_column :records, :user_id, :int
    add_index :records, :user_id
  end
end
