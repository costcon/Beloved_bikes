Rails.application.routes.draw do
  root :to => 'homes#top'
  get 'review/index'
  get 'review/show'
  get 'review/create'
  get 'review/update'
  get 'reserves/new'
  get 'reserves/confirm'
  get 'reserves/create'
  get 'reserves/index'
  get 'reserves/show'
  get 'reserves/thanks'
  get 'bikes/index'
  get 'bikes/show'
  get 'bikes/edit'
  get 'bikes/update'
  get 'bikes/destroy'
  get 'users/edit'
  get 'users/destroy'
  get 'users/show'
  get 'users/update'
  get 'homes/top'
  get 'homes/about'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
