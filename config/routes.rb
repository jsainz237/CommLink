Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  root to: 'landing_page#index'
  resources :instructors
  resources :courses do 
    resource :ratings, except:[:index], controller: 'courses/ratings'
  end
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
