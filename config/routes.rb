Rails.application.routes.draw do
  get :pages, to: "pages#show"
  resources :pages
  root to: "static#home"
end
