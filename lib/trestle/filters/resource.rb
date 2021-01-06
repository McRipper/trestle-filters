module Trestle
  module Filters
    module Resource
      extend ActiveSupport::Concern

      module ClassMethods

        attr_accessor :filters

        def filtrable?
          adapter.respond_to?(:ransack)
        end
      end
    end
  end
end
