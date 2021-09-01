class UsersRecords < ActiveRecord::Migration[6.1]
    def change
        create_table :users_records do |t|
            t.integer :user_id
            t.integer :record_id
        end
    end
end
