module EcommerceApi

  class Products < Grape::API
    resource :products do
      get do
        {message: "hello"}
      end
    end
  end

end