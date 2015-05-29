class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :creative, :boolean, default: false
    add_column :users, :customer, :boolean, default: false
  end
end
