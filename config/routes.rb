Rails.application.routes.draw do

  # get 'users/new'
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'

  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:new ,:index, :show, :edit]
#   post 'books' => 'books#create'
  resources :books
# get 'books' => 'books#index'
#   get 'books/:id' => 'books#show', as: 'book'
#   get 'books/:id/edit'  => 'books#edit' , as: 'edit_book'
  # patch 'books/:id' => 'books#update', as: 'update_book'
  # delete 'books/:id' => 'books#destroy', as: 'destroy_book'

end
