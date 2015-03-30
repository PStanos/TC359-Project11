class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.text :name
      t.integer :age
      t.text :breed
      t.boolean :declawed

      t.timestamps null: false
    end
  end
end
