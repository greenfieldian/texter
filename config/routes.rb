Rails.application.routes.draw do
  devise_for :users
  resources :people
  root 'users#index'

  resource :messages do
    collection do
      post 'reply'
    end
  end
end
