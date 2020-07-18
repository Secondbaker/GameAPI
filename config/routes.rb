Rails.application.routes.draw do
  resources :game_systems
  resources :games
  resources :consoles do
    
  end
  get 'console/random/', to: 'consoles#random', as: 'random_console'
  get 'console/:id/random/', to: 'consoles#random_game', as: 'console_random_game'
  get 'game/random/', to: 'games#random', as: 'random_game'
  get 'game_system/random/', to: 'game_systems#random', as: 'random_game_system'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
