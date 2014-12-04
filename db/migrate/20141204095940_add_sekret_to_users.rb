class AddSekretToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sekret, :text
  end
end
