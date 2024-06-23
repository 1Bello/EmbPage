Rails.application.routes.draw do
  resources :playlists do
    resources :songs
  end
  resources :songs, only: [:show]
  get '/auth/spotify/callback', to: 'users#spotify'
  resources :home
  root "application#index"
end