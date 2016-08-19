class CreateCandyStores < ActiveRecord::Migration[5.0]
  def change
    create_table :candy_stores do |t|
      t.string :name, null: false
      t.string :address
      t.string :phone
      t.string :hours
      
      t.timestamps
    end
  end
end
