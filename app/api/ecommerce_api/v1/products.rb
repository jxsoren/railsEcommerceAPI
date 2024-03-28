module EcommerceApi
  module V1
    class Products < Grape::API
      resource :products do
        desc 'Products'
        # GET /api/v1/products
        get do
          # Fetch all products
          products = Product.all
          # Return products
          present products, with: EcommerceApi::V1::Entities::ProductEntity
        end

        # POST /api/v1/products
        post do
          Rails.logger.debug params.inspect
          # Define Request Body Parameters
          params do
            requires :product, type: Hash do
              requires :name, type: String, desc: "Product name"
              requires :price, type: BigDecimal, desc: "Product price"
              requires :stock_quantity, type: Integer, desc: "Product quantity"
              requires :sku, type: String, desc: "Product SKU"
              requires :weight, type: BigDecimal, desc: "Product weight"
              optional :is_active, type: Boolean, desc: "Is the product active?"
              optional :rating, type: Integer, desc: "Product rating", values: 0..5
            end
          end

          # Create DB record w/ request params
          product_params = params[:product]
          product = Product.new(product_params)

          if product.save
            # Return created product to client
            present product, with: EcommerceApi::V1::Entities::ProductEntity
          else
            error!({ error: product.errors.full_messages }, 422)
          end
        end

        # PUT /api/v1/products
        put do

        end

        # DELETE /api/v1/products
        delete do

        end

      end
    end

  end
end