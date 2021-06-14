Rails.application.routes.draw do
  resources :employees
  get "contactinfo", to:"employees#contactinfo"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
