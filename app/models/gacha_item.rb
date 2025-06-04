class GachaItem < ApplicationRecord
  has_many :user_gachas, dependent: :destroy
  has_many :users, through: :user_gachas

  has_one_attached :image
end
