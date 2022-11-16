Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # CREATE
  get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant' # page form
  post 'restaurants', to: 'restaurants#create' # url receive data from form

  # READ
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant' # /restaurants/1, /restaurants/2, etc.

  # UPDATE
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  patch 'restaurants/:id', to: 'restaurants#update'

  # DELETE
  delete 'restaurants/:id', to: 'restaurants#destroy'
  # Defines the root path route ("/")
  # root "articles#index"
end
