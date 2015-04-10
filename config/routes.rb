Bloccit::Application.routes.draw do
 
resources :posts

get 'contact/index'
get 'about' => 'welcome#about'

root to: 'welcome#index'
end
