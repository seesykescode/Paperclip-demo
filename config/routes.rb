Rails.application.routes.draw do

  root 'photos#index'

  get 'photos/index'

  get 'photos/create'

  get 'photos/new'

  get 'photos/show'

resources :photos




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
