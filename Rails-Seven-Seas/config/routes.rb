Rails.application.routes.draw do
  
  resources :seas
  root 'seas#welcome'
  
end
