Rails.application.routes.draw do
  get '/employees' => 'employees#index'
  namespace :api do
    namespace :v1 do
      get '/employees' => 'employees#index'
      post '/employees' => 'employees#create'
      get '/employees/:id' => 'employees#show'
      patch '/employees/:id' => 'employees#update'
      delete '/employees/:id' => 'employees#destroy'
    end

    namespace :v2 do
      get '/employees' => 'employees#index'
      post '/employees' => 'employees#create'
      get '/employees/:id' => 'employees#show'
      patch '/employees/:id' => 'employees#update'
      delete '/employees/:id' => 'employees#destroy'
    end
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
