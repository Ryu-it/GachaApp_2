class RemoveGachaImageFromGachaItems < ActiveRecord::Migration[7.2]
  def change
    remove_column :gacha_items, :gacha_image, :string
  end
end
