class ChangeTablesInGroups < ActiveRecord::Migration[5.1]
  def change
    rename_column :groups, :host_id, :owner_id
    add_column :groups, :picture_url, :string, null: false
  end
end
