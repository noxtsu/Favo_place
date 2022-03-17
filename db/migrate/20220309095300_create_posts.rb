class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      
      t.integer :user_id, null: false
      t.string :place_image, null: false
      t.string :place_name, null: false
      t.text :text, null: false
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
