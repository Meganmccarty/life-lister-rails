class DropUsersRecords < ActiveRecord::Migration[6.1]
    def change
        drop_table :users_records
    end
end
