class ChangeColInEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :description, :text
  end
end
