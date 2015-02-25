Myapp::Application.routes.draw do
root to: 'home#index'

resources :items

end
