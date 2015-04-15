Bloccit::Application.routes.draw do

resources :posts
resources :questions

get 'about' => 'welcome#about'

root to: 'welcome#index'
end
