class RemoveSpeciesFromRecords < ActiveRecord::Migration[6.1]
  def change
    remove_column :records, :species, :string
  end
end
