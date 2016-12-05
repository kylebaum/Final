class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.text :caption
      t.string :image
      t.string :houseorapartment
      t.integer :numberofbedroom
      t.integer :numberofbathroom
      t.string :city
      t.string :neighborhood
      t.text :policy
      t.integer :price
      t.integer :user_id

      t.timestamps

    end
  end
end
