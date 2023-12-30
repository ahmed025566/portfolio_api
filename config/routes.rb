Rails.application.routes.draw do
  post 'messages/email_me', to: 'messages#email_me'
  get '/posts', to: 'posts#index', as: 'posts'
  get '/posts/:id', to: 'posts#show', as: 'post'
  resources :comments, only: [:create]
end
