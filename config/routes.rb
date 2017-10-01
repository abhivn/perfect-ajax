Rails.application.routes.draw do
  resources :blogs do
    get "delete"
  end

  root 'blogs#index'
end
