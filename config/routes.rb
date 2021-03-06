Rails.application.routes.draw do
  
  devise_for :users
  get 'projects/index'
  get 'contact-form', to: 'messages#new', as: 'new_message' 
  post 'send-form', to: 'messages#create', as: 'create_message'

  get 'qscar/index'
  root 'qscar#index'

  scope "/:locale", locale: /en|fr|nl/ do 
    resources :qscar
    resources :projects, only:[:index]
    resources :technos, only:[:index]
    resources :blogs
    resources :users, only: [:new, :create] do
      member do 
        get 'confirm'
      end 
    end 
  end 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
