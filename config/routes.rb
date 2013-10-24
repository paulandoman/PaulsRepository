QuickBlog::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  root :to => 'posts#index'

  ActiveAdmin.routes(self)

  resources :posts do
    resources :comments, :only => [:create]
  end
end
