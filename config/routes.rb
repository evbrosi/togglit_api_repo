Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/:togglit_id' => 'organization#show'
  get '/:togglit_id/locations' => 'locations#index'
  get '/:togglit_it/employees' => 'employees#index'
end
