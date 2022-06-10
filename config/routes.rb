Rails.application.routes.draw do
  root 'users#index'

  resource :messages do
    collection do
      post 'reply'
    end
  end
end
