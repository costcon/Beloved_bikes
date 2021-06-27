Rails.application.routes.draw do

  devise_for :admins, :controllers => {
    :sessions => 'admins/sessions'
  }

  devise_scope :admin do
    get "sign_in", :to => "admins/sessions#new"
    get "sign_out", :to => "admins/sessions#destroy"
  end

  root :to => 'homes#top'
  get 'homes/about'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end

  resources :bikes, only: [:edit, :create, :index, :show, :update, :destroy, :new] do
    member do
      get 'exhibit'
    end
    collection do
      get 'search'
    end
  end
  resources :users, only: [:edit, :show, :update]
  get "users/:id/unsubscribe" => "users#unsubscribe"
  put "/users/:id/withdraw" => "users#withdraw", as: "user_withdraw"

  resources :reviews, only: [:new, :show, :create, :update]
  resources :reservations, only: [:new, :create, :index, :show, :update] do
    member do
      post 'confirm'
    end
    collection do
      get 'thanks'
      get 'requests'
    end
  end

  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]

  get '/map_request', to: 'maps#map', as: 'map_request'

end
