Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/:togglit_id' => 'organization#show', as: :organizations_show
#  get '/:togglit_id/locations' => 'locations#index', as: :locations_index
  get '/:togglit_id/employees' => 'employees#index'
  post '/:togglit_id/employees' => 'employees#create'

  # match '/:togglit_id/locations' => 'locations#create', via: [:get, :post]

  get '/:togglit_id/locations' => 'locations#index'
  post '/:togglit_id/locations' => 'locations#create'

  post '/hello' => 'organization#create'

#  resources '/:togglit_id/locations', only: [:create, :update, :show, :index, :destroy]

end