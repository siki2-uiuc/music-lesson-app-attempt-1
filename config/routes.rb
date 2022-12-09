Rails.application.routes.draw do

  resources :user_instruments
  resources :instruments
  resources :musician_genres
  resources :genres
  resources :locations
  resources :testimonial_links
  devise_for :users

  
  
  root "users#index"
  
  get ":username" => "users#show", as: :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
