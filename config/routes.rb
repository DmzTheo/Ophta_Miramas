Rails.application.routes.draw do

  constraints(host: /^(?!www\.)/i) do
    match '(*any)' => redirect { |params, request|
      URI.parse(request.url).tap { |uri| uri.host = "www.#{uri.host}" }.to_s
    }, :via => [:get, :post]
  end

  root to: 'pages#home'

  get 'lunettes' => 'pages#lunettes'
  get 'centre' => 'pages#centre'
  get 'equipe' => 'pages#equipe'
  get 'telechargements' => 'pages#telechargements'
  get 'robots.:format' => 'pages#robots'

  get '/sitemap.xml' => 'sitemaps#index', :format => 'xml', :as => :sitemap

  resources :pathologies, only: [:show, :index]

  resources :chirurgies, only: [:show, :index] do
    resource :bilancliniquepreoperatoire, only: [:show]
    resource :preparerlintervention, only: [:show]
    resource :consignepostoperatoire, only: [:show]
    resource :choisissezvotreimplant, only: [:show]
  end

  dynamic_error_pages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
