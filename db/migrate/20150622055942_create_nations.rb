class CreateNations < ActiveRecord::Migration
  def change
    create_table :nations do |t|
      t.string :name
      t.string :size
      t.integer :population

      t.timestamps null: false
    end
  end
end
