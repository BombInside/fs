Myapp::Application.routes.draw do
  resources :bits_1s

root to: 'home#index'

resources :items do 
	get :upvote, on: :member
	get :expensive, on: :collection
end

end
