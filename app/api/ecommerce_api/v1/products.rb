module EcommerceApi
  module V1
    class Products < Grape::API
      resource :products do
        # GET /products
        desc 'Products'
        get do
          # Fetch all products
          products = Product.all
          # Return products
          present products, with: EcommerceApi::V1::Entities::ProductEntity
        end

        # POST /products
        post do

        end

        # PUT /products
        put do

        end

        # DELETE /products
        delete do

        end

      end
    end

  end
end