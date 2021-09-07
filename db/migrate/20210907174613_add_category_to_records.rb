class AddCategoryToRecords < ActiveRecord::Migration[6.1]
    def change
        add_column :records, :category, :string
    end
end
