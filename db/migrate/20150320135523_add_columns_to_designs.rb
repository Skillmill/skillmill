class AddColumnsToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :customer_id, :integer
    add_column :designs, :designer_id, :integer
  end
end
