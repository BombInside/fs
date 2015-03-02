Myapp::Application.routes.draw do

  resources :users
  resources :sessions, only: [:create]

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'

root to: 'home#index'

resources :items do
	get :upvote, on: :member
	get :expensive, on: :collection
end

end
