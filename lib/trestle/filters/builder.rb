module Trestle
  module Filters
    module Builder

      def filters(&block)
        admin.define_adapter_method(:filters, &block)
      end

    end
  end
end
