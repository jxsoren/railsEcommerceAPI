module EcommerceApi
  module V1
    module Entities
      class ProductEntity < Grape::Entity
        expose :id, documentation: {type: 'Integer', desc: 'Product ID'}
        expose :name, documentation: {type: 'String', desc: 'Product Name'}
        expose :price, documentation: {type: 'Integer', desc: 'Product Price'}
        expose :stock_quantity, documentation: {type: 'Integer', desc: 'Product Stock Quantity'}
        expose :sku, documentation: {type: 'String', desc: 'Product SKU'}
        expose :is_active, documentation: {type: 'Bool', desc: 'Product Status'}
        expose :weight, documentation: {type: 'Float', desc: 'Product Weight'}
        expose :rating, documentation: {type: 'String', desc: 'Product Rating'}
      end
    end
  end
end