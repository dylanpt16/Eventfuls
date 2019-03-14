class AddPictureToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :picture_url, :string, null: false
  end
end
