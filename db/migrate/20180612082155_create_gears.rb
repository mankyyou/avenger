class CreateGears < ActiveRecord::Migration[5.2]
  def change
    create_table :gears do |t|
      t.string :gearname
      t.string :picture
      t.decimal :price

      t.timestamps
    end
  end
end
