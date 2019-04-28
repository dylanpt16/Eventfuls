class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :announcements do |t|
      t.integer :user_id, null: false
      t.integer :group_id, null: false
      t.string :content, null: false

      t.timestamps
    end

    add_index :announcements, :user_id
    add_index :announcements, :group_id
  end
end
