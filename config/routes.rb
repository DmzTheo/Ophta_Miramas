Rails.application.routes.draw do
  get 'choisissezvotreimplants/show'
  root to: 'pages#home'
  get 'pages/lunettes'
  get 'pages/centre'
  get 'pages/equipe'
  get 'pages/rendez_vous'
  get 'pages/telechargements'

  resources :pathologies, only: [:show, :index]

  resources :chirurgies, only: [:show, :index] do
    resources :bilancliniquepreoperatoires, only: [:show]
    resources :preparerlinterventions, only: [:show]
    resources :consignepostoperatoires, only: [:show]
    resources :choisissezvotreimplants, only: [:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
