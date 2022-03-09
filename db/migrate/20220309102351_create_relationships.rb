class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.references :follower_id
      t.references :followed_id

      t.timestamps
    end
  end
end
