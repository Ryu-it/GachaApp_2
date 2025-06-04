class UserGacha < ApplicationRecord
  belongs_to :user
  belongs_to :gacha_item
end
