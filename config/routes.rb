Blog::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  devise_for :users

  resources :posts do |posts|
    resources :comments
  end

  match '/search' => 'search#index'
  root :to => 'home#index'

  match '/posts/:name/tag' => "posts#tag", :as => :tag
end

