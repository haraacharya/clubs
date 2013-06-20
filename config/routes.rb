CourseProject::Application.routes.draw do
  
  ActiveAdmin.routes(self)

  root to: "main#index"
  
  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users, :path => 'accounts', controllers: { confirmations: 'confirmations' }

  devise_scope :users do
  	get '/confirmation-getting-started' => 'main#index'
  end
  
  
  resources :userdetails, only: [:create, :new, :show, :edit, :update]
  resources :clubs, only: [:create, :new, :show, :edit, :update]
  
end
