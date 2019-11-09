class AddAddressToOnsens < ActiveRecord::Migration[5.2]
  def change
    add_column :onsens, :address, :string
  end
end
