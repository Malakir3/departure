Rails.application.routes.draw do
  root to: "contents#new"
resources :contents, except: :show
end
