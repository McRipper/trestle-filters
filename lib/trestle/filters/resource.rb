module Trestle
  module Filters
    module Resource
      extend ActiveSupport::Concern

      included do
        # Include custom #collection method on Resource instance
        prepend Collection

        # Include custom #collection method on Resource class
        singleton_class.send(:prepend, Collection)
      end

      module Collection

        def collection(params={})
          if filtrable?
            model.ransack(params[:q]).result
          else
            super
          end
        end

        #def finalize_collection(collection)
          #Rails.logger.debug("finalize #{collection.inspect}")
          #collection.result
        #end

        #def paginate(collection, params)
          #collection.result.page(params[:page])
        #end

        def filters(&block)
          Trestle::Form.new(&block)
        end

      end

      module ClassMethods
        def filtrable?
          adapter.respond_to?(:filters)
        end
      end
    end
  end
end
