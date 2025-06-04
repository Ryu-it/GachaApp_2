class CreateGachaItems < ActiveRecord::Migration[7.2]
  def change
    create_table :gacha_items do |t|
      t.string :name
      t.text :body
      t.string :gacha_image

      t.timestamps
    end
  end
end
