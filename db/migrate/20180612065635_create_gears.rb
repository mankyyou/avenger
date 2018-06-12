class CreateGears < ActiveRecord::Migration[5.2]
  def change
    create_table :gears do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.decimal :price
      t.string :inventory

      t.timestamps
    end
  end
end
