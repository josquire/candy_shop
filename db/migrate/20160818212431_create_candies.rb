class CreateCandies < ActiveRecord::Migration[5.0]
  def change
    create_table :candies do |t|
      t.string :name, null: false
      t.float :cost, null: false
      t.string :allergens
      t.integer :calories
      t.integer :ranking
      t.belongs_to :candy_store
      t.timestamps
    end
  end
end
