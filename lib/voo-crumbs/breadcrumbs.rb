require 'active_support/concern'

module Voonami
  module Crumbs
    module Breadcrumbs
      extend ActiveSupport::Concern

      included do
        helper_method :breadcrumbs
        helper_method :title_from_breadcrumbs
      end

      def breadcrumbs
        @breadcrumbs ||= []
      end

      # Add a crumb to the url
      def drop_crumb(caption, url = nil)
        breadcrumbs << [caption.to_s, url].compact
      end

      def title_from_breadcrumbs(args={})
        head, *rest = breadcrumbs

        root_caption = args[:root_caption] || head.first
        root_url = head.last

        ([[root_caption, root_url]] + rest)
          .map{|i| i.first}
          .join(args.fetch(:seperator, " :: "))
      end

      module ClassMethods
        def drop_crumb(caption, url = nil)
          before_filter do |controller|
            if url.is_a? Symbol
              resolved_url = controller.send(url)
            elsif url.is_a? String
              resolved_url = url
            else
              resolved_url = nil
            end
            controller.drop_crumb caption, resolved_url
          end
        end
      end
    end
  end
end
