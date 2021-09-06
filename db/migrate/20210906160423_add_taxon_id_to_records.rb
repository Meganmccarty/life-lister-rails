class AddTaxonIdToRecords < ActiveRecord::Migration[6.1]
    def change
        add_column :records, :taxon_id, :int
        add_index :records, :taxon_id
    end
end
