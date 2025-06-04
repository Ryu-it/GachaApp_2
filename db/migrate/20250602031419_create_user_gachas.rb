class CreateUserGachas < ActiveRecord::Migration[7.2]
  def change
    create_table :user_gachas do |t|
      t.references :user, null: false, foreign_key: true
      t.references :gacha_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
