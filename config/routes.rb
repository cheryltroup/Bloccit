Bloccit::Application.routes.draw do 

resources :posts
resources :advertisements

#get 'contact/index'
get 'about' => 'welcome#about'

root to: 'welcome#index'
end
