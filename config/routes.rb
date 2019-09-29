Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'todos#index'

  get "todos" => "todos#index"
  patch "todos" => "todos#update"
  post "todos" => "todos#create"

end
