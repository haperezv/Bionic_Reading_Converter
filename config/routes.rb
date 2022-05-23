Rails.application.routes.draw do
  get 'bionics/', to: 'bionics#index'
  post 'bionics/view'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
