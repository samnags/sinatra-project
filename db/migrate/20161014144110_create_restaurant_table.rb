class CreateRestaurantTable < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :rating
      t.string :address
    end
  end
end
