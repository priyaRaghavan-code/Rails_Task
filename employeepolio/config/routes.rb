Rails.application.routes.draw do
  devise_for :users 
  
  resources :employees do
    resources :educations
    resources :experiences
  end

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to:"employees#index"


  resources :certifications, :only => [:index,:new]
  get '/search', to:"employees#search"
  



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
