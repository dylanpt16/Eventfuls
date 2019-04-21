class AddColToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email, :string, default: "dptrinh1@gmail.com"
    add_column :users, :picture_url, :string, default: "http://res.cloudinary.com/dylanpt16/image/upload/q_80/v1518737910/eventfuls/Screen_Shot_2018-02-15_at_3.37.25_PM.png"
    add_column :users, :name, :string, default: "Dylan Chan"
  end
end
