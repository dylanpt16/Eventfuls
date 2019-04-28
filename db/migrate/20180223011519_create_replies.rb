class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.integer :user_id, null: false
      t.integer :announcement_id, null: false
      t.string :content, null: false

      t.timestamps
    end
    
    add_index :replies, :user_id
    add_index :replies, :announcement_id
  end
end
