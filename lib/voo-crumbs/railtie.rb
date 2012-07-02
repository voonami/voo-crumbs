require 'rails/railtie'

module Voonami
  module Crumbs
    # @private
    class Railtie < Rails::Railtie
      initializer "voo_crumb.initialize" do |app|
        ActionController::Base.send :include, Breadcrumbs
      end
    end
  end
end
