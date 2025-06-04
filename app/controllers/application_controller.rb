class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  add_flash_types :success, :danger

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if session[:pending_gacha_item_id]
      UserGacha.create(user: current_user, gacha_item_id: session[:pending_gacha_item_id])
      session.delete(:pending_gacha_item_id)
    end

    super
  end

  private

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
