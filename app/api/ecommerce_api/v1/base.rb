module EcommerceApi
  module V1
    class Base < Grape::API
      version 'v1', using: :path
      format 'json'
      prefix :api

      mount EcommerceApi::V1::Products

      # GET /api/v1/ping
      get :ping do
        { message: 'pong' }
      end

    end
  end
end