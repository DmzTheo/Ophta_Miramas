Rails.application.routes.draw do
  root to: 'pages#home'

  get 'pages/lunettes'
  get 'pages/centre'
  get 'pages/equipe'
  get 'pages/telechargements'

  resources :pathologies, only: [:show, :index]

  resources :chirurgies, only: [:show, :index]
  resources :bilancliniquepreoperatoires, only: [:show]
  resources :preparerlinterventions, only: [:show]
  resources :consignepostoperatoires, only: [:show]
  resources :choisissezvotreimplants, only: [:show]

  get "/404", to: "errors#not_found", via: :all
  get "/422", to: "errors#unacceptable", via: :all
  get "/500", to: "errors#internal_server_error", via: :all

  # 301 redirect from old URLs
  get "/old_path_to_posts/:id", to: redirect("/posts/%{id}s")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
