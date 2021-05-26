Rails.application.routes.draw do

  devise_for :end_users
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
  scope module: :end_user do
    root to: 'homes#top'
    get 'homes/about'
    get 'mybookmarks' => 'bookmarks#bookmarks', as: 'bookmarks'
    resources :end_users, only: [:index, :show, :edit, :update]
    
    resources :post_products do
      resource :bookmarks, only: [:create, :destroy]
    end
    get 'follower/:id' => 'relationships#follower', as: 'follower'
    get 'followed/:id' => 'relationships#followed', as: 'followed'
    post 'follow/:id' => 'relationships#follow', as: 'follow'
    post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  end
  
  
  namespace :admins do
    resources :end_users, only: [:index, :show]
    resources :post_products, only: [:index, :show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
