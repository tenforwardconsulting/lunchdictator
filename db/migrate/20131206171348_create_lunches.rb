class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.references :restaurant
      t.timestamps
    end

    create_table :user_lunches do |t|
      t.references :user
      t.references :lunch

      t.timestamps
    end
  end
end
