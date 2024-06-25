Rails.application.routes.draw do
  
  root "application#index"
  post 'receive_data', to: 'application#receive_data'
  get 'fetch_data', to: 'application#fetch_data'
  get 'about_us', to: 'application#about', as: 'about_us'
  get 'sightings', to: 'application#sight', as: 'sightings'
end