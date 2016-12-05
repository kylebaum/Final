class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.integer :property_id
      t.integer :user_id
      t.text :body

      t.timestamps

    end
  end
end
