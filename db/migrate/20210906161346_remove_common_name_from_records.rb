class RemoveCommonNameFromRecords < ActiveRecord::Migration[6.1]
  def change
    remove_column :records, :common_name, :string
  end
end
