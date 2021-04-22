Rails.application.routes.draw do
  root to: "contents#new"
resources :contents, only: [:index, :new, :create]
end
