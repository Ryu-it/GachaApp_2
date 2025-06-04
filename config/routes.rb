Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root "home#index"
  
  resources :gacha_items, only: %i[new index show] do
    collection do
      post :draw
    end
  end
end
