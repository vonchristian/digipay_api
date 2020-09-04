Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :transactions,  only: [:index, :show]
      resources :virtual_money_accounts, only: [:index]
      resources :agents, only: [:show] do
        resources :deposits,    only: [:create], module: :agents_module
        resources :withdrawals, only: [:create], module: :agents_module
      end
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
