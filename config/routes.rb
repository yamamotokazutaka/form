Rails.application.routes.draw do
  root "forms#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/forms/new" => "forms#new"
  post "/forms/create" => "forms#create"
  get "/forms/:id" => "forms#show"
  get "/forms/:id/edit" => "forms#edit"
  post "/forms/:id/update" => "forms#update"
  post "/forms/:id/destroy" => "forms#destroy"
end
