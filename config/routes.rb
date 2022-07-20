Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'blog', to: 'pages#blog'
  get 'dashboard', to: 'dashboard#index'

  get 'merchants_dashboard', to: 'merchants/dashboard#index'
  get 'clients_dashboard', to: 'clients/dashboard#index'
  get 'admins_dashboard', to: 'admins/dashboard#index'

  get 'clients_payments', to: 'clients/payments#index'
  post 'clients_payments', to: 'clients/payments#create'
  get 'merchants_payments', to: 'merchants/payments#index'

  get 'clients_settlements', to: 'clients/settlements#index'

  get 'clients_withdrawals', to: 'clients/withdrawals#index'
  get 'merchants_withdrawals', to: 'merchants/withdrawals#index'
  get 'admins_withdrawals', to: 'admins/withdrawals#index'

  get 'clients_notifications', to: 'clients/notifications#index'
  get 'merchants_notifications', to: 'merchants/notifications#index'
  get 'admins_notifications', to: 'admins/notifications#index'

  get 'merchants_accounts', to: 'merchants/accounts#index'
  get 'clients_accounts', to: 'clients/accounts#index'

  get 'admins_clients', to: 'admins/clients#index'
  get 'admins_merchants', to: 'admins/merchants#index'

  resources :accounts
  
  get 'invoices', to: 'invoices#index'
  get 'notifications', to: 'notifications#index'

end
