Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # verb 'path', to: 'controller#action'
  
  # # CRUD

  # # CREATE ACTIONS
  # # 1. read the form - NEW
  # # only the GET routes have a view
  # get 'restaurants/new', to: 'restaurants#new'
  # # 2. create the RESTAURANT - CREATE
  # post 'restaurants', to: 'restaurants#create'

  # # READ ACTIONS
  # # 1. read many - INDEX
  # # only the GET routes have a view
  # get 'restaurants', to: 'restaurants#index'
  # # 2. read one - SHOW
  # # only the GET routes have a view
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # # UPDATE ACTIONS
  # # 1. read the form - EDIT
  # # only the GET routes have a view
  # get 'restaurants/:id/edit', to: 'restaurants#edit'
  # # 2. update the RESTAURANT - UPDATE
  # patch 'restaurants/:id', to: 'restaurants#update'

  # # DELETE ACTION
  # delete 'restaurants/:id', to: 'restaurants#destroy'

  # The line below generates the same 7 paths as above
  resources :restaurants
end
