Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'chats#index'
  #temporary root path for now

  resources :users, only:[:new, :create] do
    resources :chats, only: [:index, :show, :create]
  end

    resources :sessions, only:[:new, :destroy, :create]
    resources :messages, only:[:create]

      # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
  ...
end
