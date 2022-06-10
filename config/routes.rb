Rails.application.routes.draw do
  resources :people
  root 'users#index'

  resource :messages do
    collection do
      post 'reply'
    end
  end
end
