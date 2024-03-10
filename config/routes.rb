Rails.application.routes.draw do
  mount EcommerceAPI::Base => '/'

  resources :groups

  get "up" => "rails/health#show", as: :rails_health_check

end
