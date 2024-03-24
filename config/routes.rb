Rails.application.routes.draw do
  mount EcommerceApi::Base => '/'

  get "up" => "rails/health#show", as: :rails_health_check

end
