class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.text :description
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
