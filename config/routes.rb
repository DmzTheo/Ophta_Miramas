Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/lunettes'
  get 'pages/centre'
  get 'pages/equipe'

  resources :pathologies, only: [:show, :index]

  resources :chirurgies, only: [:show, :index] do
    resources :bilancliniquepreoperatoires, only: [:show]
    resources :preparerlinterventions, only: [:show]
    resources :consignepostoperatoires, only: [:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
