class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.string :image
      t.decimal :stock

      t.timestamps
      end
  end
end
