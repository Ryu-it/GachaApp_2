class GachaItemsController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def new
  end

  def draw
    @gacha_item = GachaItem.order("RANDOM()").first

    if current_user
      UserGacha.create(user: current_user, gacha_item: @gacha_item)
    else
      session[:pending_gacha_item_id] = @gacha_item.id
    end
      redirect_to gacha_item_path(@gacha_item)
  end

  def show
    @gacha_item = GachaItem.find(params[:id])
    if current_user
      unless current_user.gacha_items.exists?(id: @gacha_item.id)
        redirect_to root_path, danger: "権限がありません"
      end
    else
      unless session[:pending_gacha_item_id] == @gacha_item.id
        redirect_to root_path, danger: "権限がありません（ゲスト）"
      end
    end
  end

  def index
    @gacha_items = current_user.gacha_items.distinct
  end
end
