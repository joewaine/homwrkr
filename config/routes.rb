Homewrkr::Application.routes.draw do

root :to => 'home#index'

resources :assignments, :students

end