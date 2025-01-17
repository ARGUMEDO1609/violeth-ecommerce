Rails.application.routes.draw do

 
  devise_for :admins
  root "home#index"
  get "up" => "rails/health#show", as: :rails_health_check

  # Admin routes
  authenticate :admin do
    root to: "admin#index", as: :admin_root
     end

     namespace :admin, path: "", as: "" do
      resources :categories
    end 
     get "admin" => "admin#index"
end
