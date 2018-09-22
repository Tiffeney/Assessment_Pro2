Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "widgets#view"
  post '/widgets', to: 'widgets#create'
  resources :widgets

  
end
