Parcel::Application.routes.draw do
  root :to => "gardens#index"
  match '/' => 'gardens#index', :as => :gardens
  
  resources :gardens, :except => :index
  resources :users, :only => [:index, :show, :edit, :update ]
  match '/auth/:provider/callback' => 'sessions#create'
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/auth/failure' => 'sessions#failure'
end
