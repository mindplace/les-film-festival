Rails.application.routes.draw do

  # sessions routes
  get   'login',  to: "sessions#new"
  post  'login',  to: "sessions#create"
  get   'logout', to: "sessions#destroy"

  # category [index, show]
  resources :categories, only: [:index, :show]

  # movie
  # should movie index page be "top movies for category"?
  resources :movies, only: [:index, :show]

  # review
  # index page lists 10 most recent reviews overall, AND 5 most recent per category
  resources :reviews, only: [:new, :create, :index]

  # comment
  resources :comments, only: [:new, :create]

  # user
  resources :users, only: [:new, :create, :show]

  # judge
  get   'judges',           to: "users#index"
  get   'judges/register',  to: "users#new_judge"
  post  'judges/register',  to: "users#create_judge"
  get   'judges/login',     to: "sessions#new"
  get   'judges/:id',       to: "users#show",       as: "judge"

  # welcome/root
  root "application#index"

  # static pages: tickets, venue, winners - stretch
  # get '/tickets',     to: "application#tickets",    as: "tickets"
  # get '/venues',      to: "application#venues",     as: "venues"
  # get '/winners',     to: "application#winners",    as: "winners"
  # get '/contact',     to: "application#contact",    as: "contact"
end
