Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :shops do
    resources :reviews, only: [:index, :create]
  end
end