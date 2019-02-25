class RenameColumnInGroups < ActiveRecord::Migration[5.1]
  def change
    rename_column :groups, :long, :lng
  end
end
