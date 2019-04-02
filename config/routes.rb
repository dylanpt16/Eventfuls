Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resource :user, only: [:create]
    resource :session, only: [:create, :destroy]
    resources :groups, only: [:index, :show, :create]
    resources :events, only: [:index, :show, :create]
    resources :attendances, only: [:create]
    delete '/attendances', to: 'attendances#destroy'
  end

  root "static_pages#root"
end
