Bloccit::Application.routes.draw do

 
  devise_for :users
  
  resources :topics do 
  	resources :posts, except: [:index]
  	resources :summaries
  end

get 'contact/index'
get 'about' => 'welcome#about'

root to: 'welcome#index'
end
