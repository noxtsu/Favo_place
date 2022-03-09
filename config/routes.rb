Rails.application.routes.draw do

  devise_for :users do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  member do
    get :follows, :followers
  end
  resource :relationships, only: [:create, :destroy, :show]
end
  #get 'relationships/create'
  #get 'relationships/destroy'
  #get 'relationships/follows'
  #get 'relationships/followers'
  #get 'relationships/show'
  

  get 'users/unsubscribe'
  get 'users/withdraw'
  
  resources :posts do
  resources :comments, only:[:create, :destroy]
  resource :favorites, only: [:create, :destroy] 
  end
  #get 'posts/index'
  #get 'posts/show'
  #get 'posts/new'
  #get 'posts/create'
  #get 'posts/edit'
  #get 'posts/update'
  #get 'posts/destroy'

  #get 'comments/create'
  #get 'comments/destroy'
  
  #get 'favorites/create'
  #get 'favorites/destroy'

  root to: 'tops#top'

end
