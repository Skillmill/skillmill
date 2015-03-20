class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.text :description
      t.string :image
      t.boolean :thirdpartycontent
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
