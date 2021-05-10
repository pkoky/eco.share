Rails.application.routes.draw do
  devise_for :end_users
  scope module: :end_user do
    root to: 'homes#top'
    get 'homes/about'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
