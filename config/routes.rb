Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  root to: 'landing_page#index'
  get 'landing_page/favorites'
  resources :instructors
  resources :courses do
    resource :ratings, except:[:index], controller: 'courses/ratings'
    member do
      put "like", to: "courses#upvote"
      put "dislike", to: "courses#downvote"
    end
  end
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
