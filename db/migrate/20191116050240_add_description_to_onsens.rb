class AddDescriptionToOnsens < ActiveRecord::Migration[5.2]
  def change
    add_column :onsens, :description, :text
  end
end
