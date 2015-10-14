Rails.application.routes.draw do

  root 'questions#random'

  resources :questions, only: :show do
    get :random, to: :random
    resource :solution, only: :show
  end

  devise_for :admins

end
