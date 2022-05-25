Rails.application.routes.draw do
  
  get 'bionics/', to:'bionics#index'
  get 'bionics/new'
  get 'bionics/:id', to:'bionics#show', as:'show_bionic'
  get 'bionics/:id/edit', to: 'bionics#edit', as:'edit_bionic'
  
  post 'bionics/', to:'bionics#create'
  patch 'bionics/:id', to:'bionics#update', as:'bionic'
  delete 'bionics/:id', to: 'bionics#destroy', as: 'delete_bionic'

end
