class RemoveProflieImageFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name, :int
  end
end
