Myapp::Application.routes.draw do
root to: 'home#index'

resources :items do 
	get :upvote, on: :member
	get :expensive, on: :collection
end

end
