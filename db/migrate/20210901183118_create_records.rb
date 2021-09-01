class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :species
      t.string :common_name
      t.string :image
      t.date :date_seen

      t.timestamps
    end
  end
end
