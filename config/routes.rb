CourseProject::Application.routes.draw do
  
	ActiveAdmin.routes(self)

	devise_for :admin_users, ActiveAdmin::Devise.config

	devise_for :users, :path => 'accounts', controllers: { confirmations: 'confirmations' }

   	devise_scope :user do
  		get '/confirmation-getting-started' => 'userdetails#new', as: 'confirmation_getting_started'
	end
  
	root to: "main#index"
	resources :userdetails, only: [:create, :new, :show, :edit, :update]
	resources :clubs, only: [:create, :new, :show, :edit, :update]
  
end
