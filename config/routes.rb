Rails.application.routes.draw do
  mount EcommerceApi::Base => '/'
  mount EcommerceApi::Products => '/products'


  resources :groups

  get "up" => "rails/health#show", as: :rails_health_check

end
