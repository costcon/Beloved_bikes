Rails.application.routes.draw do
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

  resources :bikes, only: [:edit, :create, :index, :show, :update, :destroy]
  resources :users, only: [:edit, :show, :update, :destroy]
  resources :reviews, only: [:index, :show, :create, :update]
  resources :reserves, only: [:new, :create, :index, :show, ] do
    collection do
      post 'confirm'
      get 'reserves/thanks'
    end
  end

end

