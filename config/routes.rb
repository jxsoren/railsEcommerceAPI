Rails.application.routes.draw do
  mount EcommerceApi::V1::Base => '/'

  get "up" => "rails/health#show", as: :rails_health_check

end
