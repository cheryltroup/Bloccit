Bloccit::Application.routes.draw do
 
  devise_for :users
  resources :posts

get 'contact/index'
get 'about' => 'welcome#about'

root to: 'welcome#index'
end
