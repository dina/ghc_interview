Rails.application.routes.draw do

  root 'questions#index'
  get '/questions/:index', to: 'questions#show'
end
