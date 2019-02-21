class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.integer :host_id, null: false
      t.float :lat, null: false
      t.float :long, null: false

      t.timestamps
    end
  end
end
