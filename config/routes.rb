Rails.application.routes.draw do
  resources :games
  resources :consoles do
    
  end
  get 'console/random', to: 'consoles#random', as: 'random_console'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
