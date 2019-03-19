Rails.application.routes.draw do
  
  #get 'technos/index'
  get 'projects/index'
  get 'contact-me', to: 'messages#new', as: 'new_message' 
  post 'contact-me', to: 'messages#create', as: 'create_message'

  
  get 'qscar/index'
  #get 'qscar/about', to: 'qscar#about'
  #get 'qscar/project', to: 'qscar#project'
  root 'qscar#index'

  scope "/:locale", locale: /en|fr|nl/ do 
    #resources :qscar
    resources :projects, only:[:index]
    resources :technos, only:[:index]
  end 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
