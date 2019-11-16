class AddPhotoToOnsens < ActiveRecord::Migration[5.2]
  def change
    add_column :onsens, :photo, :string
  end
end
