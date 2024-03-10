module EcommerceApi
  class Base < Grape::API
    version 'v1', using: :path
    format json
    prefix :api

    get :ping do
      {message: 'pong'}
    end

  end
end