class CreateTaxons < ActiveRecord::Migration[6.1]
  def change
    create_table :taxons do |t|
      t.string :species
      t.string :common_name
      t.string :image

      t.timestamps
    end
  end
end
