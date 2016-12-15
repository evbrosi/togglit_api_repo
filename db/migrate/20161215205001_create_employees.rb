class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :picture_url
      t.string :email
      t.integer :organization_id

      t.timestamps
    end
  end
end
