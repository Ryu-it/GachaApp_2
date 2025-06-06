class AddGachaImageToGachaItems < ActiveRecord::Migration[7.2]
  def change
    add_column :gacha_items, :gacha_image, :string
  end
end
