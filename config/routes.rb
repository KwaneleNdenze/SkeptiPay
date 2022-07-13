Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords'}

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'blog', to: 'pages#blog'
  get 'dashboard', to: 'dashboard#index'
  get 'virtual_payments', to: 'virtual_payments#index'
  get 'withdrawal_requests', to: 'withdrawal_requests#index'
  get 'settlement_requests', to: 'settlement_requests#index'
  get 'profile', to: 'profile#index'
  get 'invoices', to: 'invoices#index'
  get 'notifications', to: 'notifications#index'

end
