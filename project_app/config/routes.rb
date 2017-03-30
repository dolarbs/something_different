Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  # devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

resources :users
resources :events
resources :comments

root to: "homes#index"

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end