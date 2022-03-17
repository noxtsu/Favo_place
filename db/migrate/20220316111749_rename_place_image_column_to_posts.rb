class RenamePlaceImageColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :place_image, :place_image_id
  end
end
