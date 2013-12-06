class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.boolean :beer_lunch
      t.boolean :walkable

      t.timestamps
    end

    create_table :user_restaurants do |t|
      t.references :user
      t.references :restaurant
      t.float :chance
      t.timestamps
    end
  end
end
