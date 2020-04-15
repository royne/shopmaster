class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.references :company, foreign_key: true
      t.references :category, foreign_key: true, optional: true

      t.timestamps
    end
  end
end
