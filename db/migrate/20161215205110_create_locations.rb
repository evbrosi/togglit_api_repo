class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :title
      t.string :description
      t.string :target_page
      t.float :latitude
      t.float :longitude
      t.integer :organization_id

      t.timestamps
    end
  end
end
