Rails.application.routes.draw do
  resources :decks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :cards
      resources :users
      resources :decks
    end
  end
end