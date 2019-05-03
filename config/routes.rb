Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resource :user, only: [:create, :show]
    resource :session, only: [:create, :destroy]
    resources :groups, only: [:index, :show, :create]
    resources :events, only: [:index, :show, :create]
    resources :attendances, only: [:create]
    delete '/attendances', to: 'attendances#destroy'
    resources :memberships, only: [:create, :index]
    delete '/memberships', to: 'memberships#destroy'
    resources :announcements, only: [:index, :create]
    resources :replies, only: [:create, :index]
  end

  root "static_pages#root"
end
