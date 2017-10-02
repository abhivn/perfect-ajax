Rails.application.routes.draw do
  resources :blogs do
    get "status"
  end

  root 'blogs#index'
end
