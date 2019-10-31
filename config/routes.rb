Rails.application.routes.draw do

  constraints(host: /^(?!www\.)/i) do
    match '(*any)' => redirect { |params, request|
      URI.parse(request.url).tap { |uri| uri.host = "www.#{uri.host}" }.to_s
    },  :via => [:get, :post]
  end

  get 'pages/robots'
  root to: 'pages#home'

  get 'pages/lunettes'
  get 'pages/centre'
  get 'pages/equipe'
  get 'pages/telechargements'
  get '/sitemap.xml' => 'sitemaps#index', defaults: { format: 'xml' }

  resources :pathologies, only: [:show, :index]

  resources :chirurgies, only: [:show, :index]
  resources :bilancliniquepreoperatoires, only: [:show]
  resources :preparerlinterventions, only: [:show]
  resources :consignepostoperatoires, only: [:show]
  resources :choisissezvotreimplants, only: [:show]

  get "/404", to: "errors#not_found", via: :all
  get "/422", to: "errors#unacceptable", via: :all
  get "/500", to: "errors#internal_server_error", via: :all

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
