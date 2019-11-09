class CreateOnsens < ActiveRecord::Migration[5.2]
  def change
    create_table :onsens do |t|
      t.string :name

      t.timestamps
    end
  end
end
