module EcommerceApi
  module V1

    class Products < Grape::API
      resource :products do
        # GET /products
        get do

          # Fetch all products
          products = Product.all

          # Return products
          present products, with: Entity::ProductEntity
          { message: "You're getting products" }
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