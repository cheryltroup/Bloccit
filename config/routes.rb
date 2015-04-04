Rails.application.routes.draw do
get 'welcome/index'

get 'welcome/about'

get 'contact page'

root to: 'welcome#index'
end
