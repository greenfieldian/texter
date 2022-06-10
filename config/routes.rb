Rails.application.routes.draw do
  namespace :conversations do
    get 'messages/index'
  end
  get 'conversations/index'
  devise_for :users
  resources :people
  root 'users#index'

  resources :conversations, only: [:index] do
    resources :messages, module: :conversations, only: [:index, :create]
  end

  # Twilio Webhook for Inbound Message
  post 'conversations/messages/reply', to: 'conversations/messages#reply'
end
