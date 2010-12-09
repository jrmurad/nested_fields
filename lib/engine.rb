module NestedFields
  class Engine < Rails::Engine
    initializer 'nested_fields.add_middleware' do |app|
      app.middleware.use ActionDispatch::Static, "#{root}/public"
    end

    config.to_prepare do
      ApplicationController.helper(NestedFieldsHelper)
    end
  end
end
