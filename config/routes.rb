Rails.application.routes.draw do
  root "welcome#index"

  resources :nathaniels 
  get '/nathaniel', to: 'nathaniel#index'
end
