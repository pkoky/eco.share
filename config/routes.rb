Rails.application.routes.draw do
  devise_for :end_users
  scope module: :end_user do
    root to: 'homes#top'
    get 'homes/about'
    resources :end_users, only: [:index, :show, :edit, :update]
    resources :post_products
    post 'follow/:id' => 'relationships#follow', as: 'follow'
    post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
