class RemoveNameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :name, :text
  end
end
