Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, :controllers => { omniauth_callbacks: 'auth/omniauth_callbacks' }
end
