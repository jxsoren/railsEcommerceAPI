module EcommerceApi
  module V1
    module Entities
      class ProductEntity < Grape::Entity
        expose :id
        expose :name
        expose :price
      end
    end
  end
end