Rails.application.routes.draw do
  resources :students
  resources :articles
  resources :books
  resources :answers
  resources :questions
  resources :feedbacks
  resources :comments
  resources :posts

  get '/search', to: 'posts#index'

  get '/sort_asc_title', to: 'posts#index'
  get '/sort_asc_body', to: 'posts#index'
  get '/sort_desc_title', to: 'posts#index'
  get '/sort_desc_body', to: 'posts#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
