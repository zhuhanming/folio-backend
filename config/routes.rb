Rails.application.routes.draw do
  get :pages, to: "pages#show"
  patch :pages, to: "pages#update"
  # patch :change_name, to: "pages#change_name"
  resources :pages
  root to: "static#home"
end
