class AddProflieImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :int
  end
end