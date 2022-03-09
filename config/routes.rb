Rails.application.routes.draw do

  get 'comments/create'
  get 'comments/destroy'
  get 'relationships/create'
  get 'relationships/destroy'
  get 'relationships/follows'
  get 'relationships/followers'
  get 'relationships/show'
  get 'favorites/create'
  get 'favorites/destroy'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/unsubscribe'
  get 'users/withdraw'
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/create'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/destroy'
  root to: 'tops#top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
