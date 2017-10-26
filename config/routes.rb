Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  get 'users/update'

  root to: "ideas#index"

  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
