Blog::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  devise_for :users

  resources :posts
  root :to => 'home#index'

  match '/posts/:name/tag' => "posts#tag", :as => :tag
end

