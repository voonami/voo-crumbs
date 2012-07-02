module Voonami
  module Crumbs
    autoload :VERSION,     "voo-crumbs/version"
    autoload :Breadcrumbs, "voo-crumbs/breadcrumbs"
  end
end

require 'voo-crumbs/railtie' if defined?(Rails)
