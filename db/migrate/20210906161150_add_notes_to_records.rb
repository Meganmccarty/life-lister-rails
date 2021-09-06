class AddNotesToRecords < ActiveRecord::Migration[6.1]
  def change
    add_column :records, :notes, :string
  end
end
