Rails.application.routes.draw do
get 'welcome/index'

get 'welcome/about'

get 'contact/index'

root to: 'welcome#index'
end
